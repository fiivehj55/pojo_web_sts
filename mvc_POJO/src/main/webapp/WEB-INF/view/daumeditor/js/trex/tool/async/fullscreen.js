(function() {
	var g = document, f = window, c = g.documentElement, a = false, b = true, e = null, h;
	Trex.Class.overwrite(Trex.Tool.FullScreen, {
		oninitialized : function() {
			var m = this.editor, l = this.config;
			var k = m.getWrapper();
			if (!k) {
				return
			}
			var i;
			var j = function() {
				if (!i) {
					i = new Trex.FullScreen(m, l)
				}
				i.execute()
			};
			this.executeTool = j;
			if (l.switched) {
				if (!i) {
					i = new Trex.FullScreen(m, l)
				}
				i.showFullScreen()
			}
			this.resetWeave();
			this.weave.bind(this)(new Trex.Button(this.buttonCfg), e, j);
			this.bindKeyboard({
				ctrlKey : b,
				keyCode : 77
			}, j);
			m.observeKey({
				ctrlKey : b,
				altKey : a,
				shiftKey : a,
				keyCode : 77
			}, j)
		}
	});
	TrexMessage
			.addMsg({
				"@fullscreen.attach.close.btn" : "\ud30c\uc77c\ucca8\ubd80\ubc15\uc2a4",
				"@fullscreen.noti.btn" : "\uc77c\ubc18 \uae00\uc4f0\uae30\ub85c",
				"@fullscreen.noti.span" : "\ub113\uac8c\uc4f0\uae30 \ubc84\ud2bc\uc744 \ub2e4\uc2dc \ub204\ub974\uc2dc\uba74 \ucc98\uc74c \uae00\uc4f0\uae30 \ucc3d \ud06c\uae30\ub85c \ub3cc\uc544\uac11\ub2c8\ub2e4."
			});
	Trex.MarkupTemplate
			.add(
					"fullscreen.notice",
					'<div class="tx-fullscreen-notice"><span>@fullscreen.noti.span</span><a href="#">@fullscreen.noti.btn</a></div>');
	Trex.MarkupTemplate
			.add(
					"fullscreen.linebox",
					'<div class="tx-fullscreen-line"><div class="tx-fullscreen-line-division"><div class="tx-fullscreen-line-left">&nbsp;</div><div class="tx-fullscreen-line-right">&nbsp;</div></div><div class="tx-fullscreen-line-box"><div class="tx-fullscreen-line-left">&nbsp;</div><div class="tx-fullscreen-line-right">&nbsp;</div><a href="#">@fullscreen.attach.close.btn</a></div></div>');
	Trex.FullScreen = Trex.Class.create({
		initialize : function(k, j) {
			if (!k) {
				return
			}
			this.isInit = a;
			this.isFullScreen = a;
			this.editor = k;
			this.rootConfig = this.editor.initialConfig;
			this.wrapper = k.getWrapper();
			this.canvas = k.getCanvas();
			this.toolbar = k.getToolbar();
			this.attachBox = k.getAttachBox();
			this.elSavedHiddens = [];
			this.minHeight = j.minHeight;
			this.minWidth = j.minWidth;
			this.useAttachBox = (!!this.attachBox.elBox);
			this.isAttachBoxDisplay = a;
			var i = this;
			this.resizeHandler = function() {
				if (i.isFullScreen) {
					i.resizeContainer()
				}
			};
			this.toolbar
					.observeJob("toolbar.advanced.fold", this.resizeHandler);
			this.toolbar.observeJob("toolbar.advanced.spread",
					this.resizeHandler);
			if (typeof showAttachBox === "function") {
				this.showAttachBoxAtServiceForSave = showAttachBox
			}
			if (typeof hideAttachBox === "function") {
				this.hideAttachBoxAtServiceForSave = hideAttachBox
			}
		},
		execute : function() {
			if (this.isFullScreen) {
				this.showNormalScreen()
			} else {
				this.showFullScreen()
			}
		},
		onAttachClick : function() {
			this.attachClickHandler(!this.isAttachBoxDisplay);
			this.resizeContainer()
		},
		attachClickHandler : function(i) {
			if (i) {
				this.showAttachBox()
			} else {
				this.hideAttachBox()
			}
		},
		showNormalScreen : function() {
			if (!this.isFullScreen) {
				return
			}
			this._showScrollbar();
			this.showNormalScreenAtService();
			var n = this.wrapper;
			if (!n) {
				return
			}
			n.style.width = "";
			$tx.removeClassName(n, "tx-editor-fullscreen");
			this.elSavedHiddens.each(function(i) {
				i.style.visibility = "visible"
			});
			if (parent) {
				try {
					$tx.stopObserving(parent, "resize", this.resizeHandler)
				} catch (o) {
				}
			} else {
				$tx.stopObserving(window, "resize", this.resizeHandler)
			}
			this.canvas.setCanvasSize({
				height : this.panelNormalHeight.toPx()
			});
			if (this.useAttachBox) {
				this.attachClickHandler(this.attachBox.checkDisplay())
			}
			this.canvas.fireJobs("canvas.normalscreen.change");
			if (this.showAttachBoxAtServiceForSave) {
				f.showAttachBox = this.showAttachBoxAtServiceForSave
			}
			if (this.hideAttachBoxAtServiceForSave) {
				f.hideAttachBox = this.hideAttachBoxAtServiceForSave
			}
			var l = this.relativeParents.length;
			for (var k = 0; k < l; k += 1) {
				var j = this.relativeParents.pop();
				var m = this.relativeValues.pop();
				$tx.setStyle(j, {
					position : m
				})
			}
			this.isFullScreen = a;
			if (!$tx.msie) {
				var p = "tx_fullscreen" + this.rootConfig.initializedId;
				setTimeout(function() {
					var i = $tom.collect($tx(p), "a");
					i.focus()
				}, 500)
			}
		},
		showFullScreen : function() {
			var j = this;
			if (this.isFullScreen) {
				return
			}
			if (!this.isInit) {
				this.generate()
			}
			this._hideScrollbar();
			this.showFullScreenAtService();
			if (this.showAttachBoxAtServiceForSave) {
				f.showAttachBox = function() {
					j.showAttachBox();
					j.resizeContainer()
				}
			}
			if (this.hideAttachBoxAtServiceForSave) {
				f.hideAttachBox = function() {
					j.hideAttachBox();
					j.resizeContainer()
				}
			}
			var l = this.wrapper;
			if (!l) {
				return
			}
			$tx.addClassName(l, "tx-editor-fullscreen");
			var m = [];
			[ "select", "embed", "object" ].each(function(o) {
				var p = $A(g.getElementsByTagName(o));
				p.each(function(q) {
					q.style.visibility = "hidden";
					m.push(q)
				})
			});
			this.elSavedHiddens = m;
			if (this.useAttachBox) {
				this.attachClickHandler(this.attachBox.checkDisplay())
			}
			var k = this.canvas.getCurrentPanel();
			this.panelNormalHeight = k.getPosition().height;
			if (window.parent) {
				$tx.observe(window.parent, "resize", this.resizeHandler)
			} else {
				$tx.observe(window, "resize", this.resizeHandler)
			}
			this.canvas.fireJobs("canvas.fullscreen.change");
			f.wrapper = l;
			this.relativeParents = [];
			this.relativeValues = [];
			var n = l.offsetParent;
			while (n && n.tagName && n.tagName !== "HTML"
					&& n.tagName !== "BODY") {
				var i = $tx.getStyle(n, "position");
				if (i.toLowerCase() === "relative") {
					this.relativeParents.push(n);
					this.relativeValues.push(i);
					$tx.setStyle(n, {
						position : "static"
					})
				}
				n = parent.offsetParent
			}
			this.isFullScreen = b;
			this.resizeContainer()
		},
		_hideScrollbar : function() {
			if (c.scrollTop || c.scrollLeft) {
				c.scrollTop = 0;
				c.scrollLeft = 0
			}
			if (g.body.scrollTop || g.body.scrollLeft) {
				g.body.scrollTop = 0;
				g.body.scrollLeft = 0
			}
			c.style.overflow = "hidden";
			g.body.style.overflow = "hidden"
		},
		_showScrollbar : function() {
			c.style.overflow = "";
			g.body.style.overflow = ""
		},
		generate : function() {
			if (this.isInit) {
				return
			}
			if (!this.wrapper) {
				return
			}
			this.generateNoti();
			this.generateLineBox();
			this.isInit = b
		},
		generateNoti : function() {
			var j = this;
			var i = Trex.MarkupTemplate.get("fullscreen.notice").evaluateAsDom(
					{});
			$tom.insertFirst(this.wrapper, i);
			var k = $tom.collect(i, "a");
			$tx.observe(k, "click", function() {
				if (j.isFullScreen) {
					j.showNormalScreen()
				} else {
					j.showFullScreen()
				}
			})
		},
		generateLineBox : function() {
			if (!this.useAttachBox) {
				return
			}
			var j = this.canvas.elContainer;
			var i = Trex.MarkupTemplate.get("fullscreen.linebox")
					.evaluateAsDom({});
			$tom.insertNext(i, j);
			var m = {
				className : "tx-fullscreen-line-box"
			};
			if ($tx.msie_ver <= "5.5") {
				m.align = "center"
			}
			var l = $tom.collect(i, "div.tx-fullscreen-line-box");
			if ($tx.msie_ver <= "5.5") {
				l.align = "center"
			}
			var k = $tom.collect(l, "a");
			this.elLineBtn = k;
			$tx.observe(k, "click", this.onAttachClick.bind(this))
		},
		getAttachBoxPosition : function() {
			if (this.isAttachBoxDisplay) {
				return $tom.getPosition(this.attachBox.elBox)
			} else {
				return {
					x : 0,
					y : 0,
					width : 0,
					height : 0
				}
			}
		},
		getPostAreaBoxPosition : function() {
			var i = $tx("tx_fullscreen_post_area");
			if (i) {
				return $tx.getDimensions(i)
			} else {
				return {
					x : 0,
					y : 0,
					width : 0,
					height : 0
				}
			}
		},
		resizeContainer : function() {
			if (!this.isFullScreen) {
				return a
			}
			this.resizeScreenAtService();
			var i, j;
			i = this.getPanelHeight();
			this.canvas.setCanvasSize({
				height : i.toPx()
			});
			if (this.wrapper) {
				j = this.getPanelWidth();
				this.wrapper.style.width = j.toPx()
			}
			return b
		},
		getPanelHeight : function() {
			var i = 0;
			var l = this.canvas.getCanvasPos().y;
			var k = this.useAttachBox ? 17 : 0;
			if (c.clientHeight > 0) {
				i = c.clientHeight - l - k
			} else {
				i = c.offsetHeight - l - k
			}
			var j = this.getPostAreaBoxPosition();
			i -= j.height;
			var m = this.getAttachBoxPosition();
			if (m.height > 0) {
				i -= m.height + 20
			}
			return Math.max(i, this.minHeight)
		},
		getPanelWidth : function() {
			var i = 0;
			if (c.clientWidth > 0) {
				i = c.clientWidth
			} else {
				i = c.offsetWidth
			}
			return Math.max(i, this.minWidth)
		},
		showAttachBox : function() {
			if (this.attachBox.useBox) {
				$tx.addClassName(this.elLineBtn, "tx-attach-close");
				$tx.show(this.attachBox.elBox);
				this.isAttachBoxDisplay = b
			}
		},
		hideAttachBox : function() {
			if (this.attachBox.useBox) {
				$tx.removeClassName(this.elLineBtn, "tx-attach-close");
				$tx.hide(this.attachBox.elBox);
				this.isAttachBoxDisplay = a
			}
		},
		showFullScreenAtService : function() {
			if (typeof showFullScreen === "function") {
				showFullScreen()
			}
		},
		showNormalScreenAtService : function() {
			if (typeof showNormalScreen === "function") {
				showNormalScreen()
			}
		},
		resizeScreenAtService : function() {
			if (typeof resizeScreen === "function") {
				resizeScreen()
			}
		}
	});
	var d = "fullscreen";
	Editor.forEachEditor(function(i) {
		i.getTool()[d].oninitialized()
	});
	Editor.editorForAsyncLoad.getTool()[d].executeTool()
}());
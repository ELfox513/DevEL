package com.prineside.tdi2.p036ui.shared;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.shared.DarkOverlay;
import java.util.Comparator;
import p218x1.C7221i;
/* renamed from: com.prineside.tdi2.ui.shared.DarkOverlay */
/* loaded from: classes2.dex */
public class DarkOverlay {

    /* renamed from: e */
    public static final Color f14132e = new Color(218959264);

    /* renamed from: b */
    public boolean f14134b;

    /* renamed from: c */
    public boolean f14135c;

    /* renamed from: a */
    public final DelayedRemovalArray<QueuedCaller> f14133a = new DelayedRemovalArray<>(true, 1, QueuedCaller.class);

    /* renamed from: d */
    public final ClickListener f14136d = new ClickListener() { // from class: com.prineside.tdi2.ui.shared.DarkOverlay.1
        @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
        public void clicked(InputEvent inputEvent, float f, float f2) {
            Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
            if (DarkOverlay.this.f14133a.size == 0) {
                Logger.error("DarkOverlay", "no callers");
                return;
            }
            QueuedCaller queuedCaller = ((QueuedCaller[]) DarkOverlay.this.f14133a.items)[DarkOverlay.this.f14133a.size - 1];
            if (queuedCaller.onClick != null) {
                DarkOverlay.this.f14135c = false;
                queuedCaller.onClick.run();
            }
            if (!DarkOverlay.this.f14135c) {
                DarkOverlay.this.removeCaller(queuedCaller.name);
            }
            DarkOverlay.this.f14135c = false;
        }
    };

    /* renamed from: com.prineside.tdi2.ui.shared.DarkOverlay$QueuedCaller */
    /* loaded from: classes2.dex */
    public static class QueuedCaller {
        public float alpha;
        public UiManager.UiLayer layer;
        public String name;
        public Runnable onClick;
        public boolean removing;
        public Image tint;
        public boolean visible;

        public QueuedCaller() {
        }
    }

    /* renamed from: e */
    public static /* synthetic */ int m20211e(QueuedCaller queuedCaller, QueuedCaller queuedCaller2) {
        return C7221i.m2085a((queuedCaller.layer.mainUiLayer.ordinal() * 100000) + queuedCaller.layer.zIndex, (queuedCaller2.layer.mainUiLayer.ordinal() * 100000) + queuedCaller2.layer.zIndex);
    }

    public void addCaller(String str, int i, Runnable runnable) {
        addCaller(str, UiManager.MainUiLayer.OVERLAY, i, runnable);
    }

    public void cancelCurrentClick() {
        this.f14135c = true;
    }

    /* renamed from: f */
    public final void m20210f() {
        this.f14133a.sort(new Comparator() { // from class: com.prineside.tdi2.ui.shared.e
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m20211e;
                m20211e = DarkOverlay.m20211e((DarkOverlay.QueuedCaller) obj, (DarkOverlay.QueuedCaller) obj2);
                return m20211e;
            }
        });
    }

    public void removeCaller(String str) {
        int i = 0;
        while (true) {
            DelayedRemovalArray<QueuedCaller> delayedRemovalArray = this.f14133a;
            if (i < delayedRemovalArray.size) {
                if (delayedRemovalArray.items[i].name.equals(str)) {
                    QueuedCaller[] queuedCallerArr = this.f14133a.items;
                    if (!queuedCallerArr[i].removing) {
                        queuedCallerArr[i].removing = true;
                        queuedCallerArr[i].layer.getTable().setTouchable(Touchable.disabled);
                        Logger.log("DarkOverlay", "remove " + str);
                        return;
                    }
                    return;
                }
                i++;
            } else {
                return;
            }
        }
    }

    public void addCaller(String str, UiManager.MainUiLayer mainUiLayer, int i, Runnable runnable) {
        if (str == null) {
            throw new IllegalArgumentException("callerName is null");
        }
        int i2 = 0;
        while (true) {
            DelayedRemovalArray<QueuedCaller> delayedRemovalArray = this.f14133a;
            if (i2 < delayedRemovalArray.size) {
                QueuedCaller queuedCaller = delayedRemovalArray.items[i2];
                if (queuedCaller.name.equals(str)) {
                    queuedCaller.onClick = runnable;
                    return;
                }
                i2++;
            } else {
                QueuedCaller queuedCaller2 = new QueuedCaller();
                queuedCaller2.name = str;
                queuedCaller2.onClick = runnable;
                queuedCaller2.visible = true;
                queuedCaller2.alpha = 0.0f;
                UiManager uiManager = Game.f8589i.uiManager;
                queuedCaller2.layer = uiManager.addLayer(mainUiLayer, i, str + " overlay", true);
                Image image = new Image(Game.f8589i.assetManager.getBlankWhiteTextureRegion());
                image.setColor(f14132e.cpy().mul(1.0f, 1.0f, 1.0f, 0.0f));
                queuedCaller2.tint = image;
                queuedCaller2.layer.getTable().setTouchable(Touchable.enabled);
                queuedCaller2.layer.getTable().addListener(this.f14136d);
                queuedCaller2.layer.getTable().add((Table) image).expand().fill();
                queuedCaller2.layer.getTable().setVisible(false);
                this.f14133a.add(queuedCaller2);
                m20210f();
                this.f14134b = true;
                Logger.log("DarkOverlay", "add " + str);
                return;
            }
        }
    }

    public void postRender(float f) {
        float f2;
        DelayedRemovalArray<QueuedCaller> delayedRemovalArray;
        if (this.f14134b) {
            if (Game.f8589i.settingsManager.isUiAnimationsEnabled()) {
                f2 = 5.0f;
            } else {
                f2 = 900100.0f;
            }
            boolean z = false;
            for (int i = this.f14133a.size - 1; i >= 0; i--) {
                QueuedCaller queuedCaller = this.f14133a.items[i];
                if (queuedCaller.removing) {
                    queuedCaller.visible = false;
                } else if (z) {
                    queuedCaller.visible = false;
                } else {
                    queuedCaller.visible = true;
                    z = true;
                }
            }
            this.f14133a.begin();
            int i2 = 0;
            while (true) {
                delayedRemovalArray = this.f14133a;
                if (i2 >= delayedRemovalArray.size) {
                    break;
                }
                QueuedCaller queuedCaller2 = delayedRemovalArray.items[i2];
                if (queuedCaller2.visible) {
                    float f3 = queuedCaller2.alpha;
                    if (f3 < 1.0f) {
                        float f4 = f3 + (f * f2);
                        queuedCaller2.alpha = f4;
                        if (f4 >= 1.0f) {
                            queuedCaller2.alpha = 1.0f;
                        }
                    }
                    queuedCaller2.layer.getTable().setVisible(true);
                } else {
                    float f5 = queuedCaller2.alpha;
                    if (f5 > 0.0f) {
                        float f6 = f5 - (f * f2);
                        queuedCaller2.alpha = f6;
                        if (f6 <= 0.0f) {
                            queuedCaller2.alpha = 0.0f;
                            queuedCaller2.layer.getTable().setVisible(false);
                        }
                    }
                    if (queuedCaller2.alpha == 0.0f && queuedCaller2.removing) {
                        Game.f8589i.uiManager.removeLayer(queuedCaller2.layer);
                        this.f14133a.removeIndex(i2);
                    }
                }
                Color color = queuedCaller2.tint.getColor();
                float f7 = queuedCaller2.alpha;
                color.f3889a = ((f7 * 0.5f) + (Interpolation.pow2Out.apply(f7) * 0.5f)) * f14132e.f3889a;
                i2++;
            }
            delayedRemovalArray.end();
            if (this.f14133a.size == 0) {
                this.f14134b = false;
            }
        }
    }
}

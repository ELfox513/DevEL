package com.prineside.tdi2.p036ui.actors;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.utils.PMath;
import java.util.Locale;
/* renamed from: com.prineside.tdi2.ui.actors.HotKeyHintLabel */
/* loaded from: classes2.dex */
public class HotKeyHintLabel extends Group {

    /* renamed from: R */
    public static final StringBuilder f12552R = new StringBuilder();

    /* renamed from: S */
    public static final StringBuilder f12553S = new StringBuilder();

    /* renamed from: T */
    public static final Vector2 f12554T = new Vector2();

    /* renamed from: M */
    public int[] f12555M;

    /* renamed from: N */
    public final Array<int[]> f12556N;

    /* renamed from: O */
    public Label f12557O;

    /* renamed from: P */
    public Label f12558P;

    /* renamed from: Q */
    public int f12559Q;
    public boolean debug;

    public HotKeyHintLabel(float f, float f2) {
        this.f12555M = new int[0];
        this.f12556N = new Array<>(true, 8, int[].class);
        this.debug = false;
        this.f12559Q = -1;
        Label label = new Label("", Game.f8589i.assetManager.getLabelStyle(21));
        this.f12557O = label;
        label.setAlignment(1);
        this.f12557O.setSize(1.0f, 1.0f);
        this.f12557O.setColor(0.0f, 0.0f, 0.0f, 0.0f);
        this.f12557O.setPosition(1.5f, -1.5f);
        addActor(this.f12557O);
        Label label2 = new Label("", Game.f8589i.assetManager.getLabelStyle(21));
        this.f12558P = label2;
        label2.setAlignment(1);
        this.f12558P.setSize(1.0f, 1.0f);
        this.f12558P.setColor(1.0f, 1.0f, 1.0f, 0.0f);
        addActor(this.f12558P);
        setTransform(false);
        setSize(1.0f, 1.0f);
        setPosition(f, f2 + 8.0f);
    }

    public static boolean isAvailable() {
        return Gdx.app.getType() == Application.ApplicationType.Desktop;
    }

    public static boolean isEnabled() {
        return Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.UI_HOT_KEY_HINTS) != 0.0d && isAvailable();
    }

    public static CharSequence generateHotKeysLabelText(int[] iArr) {
        f12552R.setLength(0);
        for (int i : iArr) {
            StringBuilder stringBuilder = f12552R;
            if (stringBuilder.length != 0) {
                stringBuilder.append("[#AAAAAA] + []");
            }
            if (i == 71) {
                stringBuilder.append("[[");
            } else if (i == 129) {
                stringBuilder.append("Ctrl");
            } else if (i == 59) {
                stringBuilder.append("Shift");
            } else if (i == 57) {
                stringBuilder.append("Alt");
            } else if (i == 144) {
                stringBuilder.append("Nm 0");
            } else if (i == 145) {
                stringBuilder.append("Nm 1");
            } else if (i == 146) {
                stringBuilder.append("Nm 2");
            } else if (i == 147) {
                stringBuilder.append("Nm 3");
            } else if (i == 148) {
                stringBuilder.append("Nm 4");
            } else if (i == 149) {
                stringBuilder.append("Nm 5");
            } else if (i == 150) {
                stringBuilder.append("Nm 6");
            } else if (i == 151) {
                stringBuilder.append("Nm 7");
            } else if (i == 152) {
                stringBuilder.append("Nm 8");
            } else if (i == 153) {
                stringBuilder.append("Nm 9");
            } else {
                stringBuilder.append(Input.Keys.toString(i).toUpperCase(Locale.US));
            }
        }
        return f12552R;
    }

    public void addVariant(int[] iArr) {
        this.f12556N.add(iArr);
        this.f12559Q = -1;
        m20707p();
    }

    /* renamed from: p */
    public final void m20707p() {
        int i;
        boolean z;
        int[] iArr = null;
        if (this.f12556N.size != 0) {
            IntArray holdingHotKeys = Game.f8589i.settingsManager.getHoldingHotKeys();
            Array.ArrayIterator<int[]> it = this.f12556N.iterator();
            int[] iArr2 = null;
            while (it.hasNext()) {
                int[] next = it.next();
                int length = next.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    } else if (holdingHotKeys.contains(next[i2])) {
                        iArr2 = next;
                        break;
                    } else {
                        i2++;
                    }
                }
            }
            if (iArr2 != null) {
                i = 1;
                for (int i3 : iArr2) {
                    i = (i * 31) + i3;
                }
            } else {
                i = 9032;
            }
        } else {
            i = 1;
        }
        if (this.f12559Q != i) {
            this.f12559Q = i;
            if (this.f12556N.size == 0) {
                this.f12558P.setText(generateHotKeysLabelText(this.f12555M));
                this.f12557O.setText(this.f12558P.getText());
                return;
            }
            IntArray holdingHotKeys2 = Game.f8589i.settingsManager.getHoldingHotKeys();
            Array.ArrayIterator<int[]> it2 = this.f12556N.iterator();
            while (it2.hasNext()) {
                int[] next2 = it2.next();
                int length2 = next2.length;
                int i4 = 0;
                while (true) {
                    if (i4 >= length2) {
                        break;
                    } else if (holdingHotKeys2.contains(next2[i4])) {
                        iArr = next2;
                        break;
                    } else {
                        i4++;
                    }
                }
            }
            if (iArr != null) {
                this.f12558P.setText(generateHotKeysLabelText(iArr));
                this.f12557O.setText(this.f12558P.getText());
                return;
            }
            Array.ArrayIterator<int[]> it3 = this.f12556N.iterator();
            while (true) {
                if (it3.hasNext()) {
                    if (it3.next().length == 1) {
                        z = true;
                        break;
                    }
                } else {
                    z = false;
                    break;
                }
            }
            if (z) {
                StringBuilder stringBuilder = f12553S;
                stringBuilder.setLength(0);
                stringBuilder.append(generateHotKeysLabelText(this.f12555M));
                Array.ArrayIterator<int[]> it4 = this.f12556N.iterator();
                while (it4.hasNext()) {
                    int[] next3 = it4.next();
                    if (next3.length == 1) {
                        StringBuilder stringBuilder2 = f12553S;
                        stringBuilder2.append("[#888888] / []");
                        stringBuilder2.append(generateHotKeysLabelText(next3));
                    }
                }
                this.f12558P.setText(f12553S);
                this.f12557O.setText(this.f12558P.getText());
                return;
            }
            this.f12558P.setText(generateHotKeysLabelText(this.f12555M));
            this.f12557O.setText(this.f12558P.getText());
        }
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
    public void draw(Batch batch, float f) {
        float x;
        float y;
        float distanceBetweenPoints;
        super.draw(batch, f);
        m20707p();
        float height = Gdx.graphics.getHeight();
        Vector2 vector2 = f12554T;
        vector2.set(Vector2.Zero);
        localToStageCoordinates(vector2);
        float scaledViewportHeight = Game.f8589i.settingsManager.getScaledViewportHeight() / height;
        float clamp = MathUtils.clamp(1.0f - (PMath.getDistanceBetweenPoints(vector2.f5527x, vector2.f5528y, Gdx.input.getX() * scaledViewportHeight, (height - Gdx.input.getY()) * scaledViewportHeight) / 480.0f), 0.0f, 1.0f);
        this.f12557O.setColor(0.0f, 0.0f, 0.0f, (0.35f * clamp) + 0.09f);
        this.f12558P.setColor(1.0f, 1.0f, 1.0f, (clamp * 0.65f) + 0.16f);
        if (this.debug) {
            Logger.log("HotKeyHintLabel", ((int) distanceBetweenPoints) + " / " + ((int) vector2.f5527x) + ":" + ((int) vector2.f5528y) + " / " + ((int) x) + ":" + ((int) y));
        }
    }

    public HotKeyHintLabel(int[] iArr, float f, float f2) {
        this(f, f2);
        this.f12555M = iArr;
        m20707p();
    }

    public HotKeyHintLabel(int[] iArr, float f, float f2, int i) {
        this(f, f2);
        this.f12557O.setAlignment(i);
        this.f12558P.setAlignment(i);
        this.f12555M = iArr;
        m20707p();
    }
}

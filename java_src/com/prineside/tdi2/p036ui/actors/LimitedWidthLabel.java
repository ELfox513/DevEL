package com.prineside.tdi2.p036ui.actors;

import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.Null;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.utils.StringFormatter;
/* renamed from: com.prineside.tdi2.ui.actors.LimitedWidthLabel */
/* loaded from: classes2.dex */
public class LimitedWidthLabel extends Label {

    /* renamed from: e0 */
    public static final IntArray f12602e0 = new IntArray();

    /* renamed from: a0 */
    public float f12603a0;

    /* renamed from: b0 */
    public int f12604b0;

    /* renamed from: c0 */
    public int f12605c0;

    /* renamed from: d0 */
    public int[] f12606d0;

    public LimitedWidthLabel(CharSequence charSequence, int i, int i2, float f) {
        super(charSequence, Game.f8589i.assetManager.getLabelStyle(i));
        this.f12603a0 = f;
        this.f12604b0 = i;
        this.f12605c0 = i2;
        this.f12606d0 = m20692i(i2, i);
        setText(charSequence);
    }

    /* renamed from: i */
    public static int[] m20692i(int i, int i2) {
        IntArray intArray = f12602e0;
        intArray.clear();
        if (i != i2) {
            intArray.add(i);
            if (i < 18 && i2 > 18) {
                intArray.add(18);
            }
            if (i < 21 && i2 > 21) {
                intArray.add(21);
            }
            if (i < 24 && i2 > 24) {
                intArray.add(24);
            }
            if (i < 30 && i2 > 30) {
                intArray.add(30);
            }
            if (i < 36 && i2 > 36) {
                intArray.add(36);
            }
            if (i < 60 && i2 > 60) {
                intArray.add(60);
            }
        }
        intArray.add(i2);
        return intArray.toArray();
    }

    /* renamed from: j */
    public static boolean m20691j(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence.length() != charSequence2.length()) {
            return true;
        }
        if (charSequence.length() >= 3 && charSequence.charAt(charSequence.length() - 3) == '.' && charSequence.charAt(charSequence.length() - 2) == '.' && charSequence.charAt(charSequence.length() - 1) == '.') {
            return true;
        }
        return false;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Label
    public void setText(@Null CharSequence charSequence) {
        Label.LabelStyle style = getStyle();
        CharSequence charSequence2 = charSequence;
        for (int length = this.f12606d0.length - 1; length >= 0; length--) {
            style = Game.f8589i.assetManager.getLabelStyle(this.f12606d0[length]);
            charSequence2 = StringFormatter.fitToWidth(charSequence, this.f12603a0, style.font, "...");
            if (!m20691j(charSequence2, charSequence)) {
                break;
            }
        }
        if (style != getStyle()) {
            setStyle(style);
        }
        super.setText(charSequence2);
    }
}

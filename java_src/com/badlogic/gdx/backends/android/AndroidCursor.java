package com.badlogic.gdx.backends.android;

import android.os.Build;
import android.view.PointerIcon;
import android.view.View;
import com.badlogic.gdx.graphics.Cursor;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.prineside.tdi2.tiles.CoreTile;
/* loaded from: classes.dex */
public class AndroidCursor implements Cursor {

    /* renamed from: com.badlogic.gdx.backends.android.AndroidCursor$1 */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C11451 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3599a;

        static {
            int[] iArr = new int[Cursor.SystemCursor.values().length];
            f3599a = iArr;
            try {
                iArr[Cursor.SystemCursor.Arrow.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3599a[Cursor.SystemCursor.Ibeam.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3599a[Cursor.SystemCursor.Crosshair.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3599a[Cursor.SystemCursor.Hand.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f3599a[Cursor.SystemCursor.HorizontalResize.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f3599a[Cursor.SystemCursor.VerticalResize.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f3599a[Cursor.SystemCursor.NWSEResize.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f3599a[Cursor.SystemCursor.NESWResize.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f3599a[Cursor.SystemCursor.AllResize.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f3599a[Cursor.SystemCursor.NotAllowed.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f3599a[Cursor.SystemCursor.None.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
    }

    /* renamed from: a */
    public static void m24335a(View view, Cursor.SystemCursor systemCursor) {
        int i;
        if (Build.VERSION.SDK_INT >= 24) {
            switch (C11451.f3599a[systemCursor.ordinal()]) {
                case 1:
                    i = CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
                    break;
                case 2:
                    i = 1008;
                    break;
                case 3:
                    i = 1007;
                    break;
                case 4:
                    i = 1002;
                    break;
                case 5:
                    i = 1014;
                    break;
                case 6:
                    i = 1015;
                    break;
                case 7:
                    i = 1017;
                    break;
                case 8:
                    i = 1016;
                    break;
                case 9:
                    i = 1013;
                    break;
                case 10:
                    i = 1012;
                    break;
                case 11:
                    i = 0;
                    break;
                default:
                    throw new GdxRuntimeException("Unknown system cursor " + systemCursor);
            }
            view.setPointerIcon(PointerIcon.getSystemIcon(view.getContext(), i));
        }
    }
}

package com.badlogic.gdx.backends.android;

import android.view.View;
import com.badlogic.gdx.Input;
/* loaded from: classes.dex */
public interface AndroidInput extends Input, View.OnTouchListener, View.OnKeyListener, View.OnGenericMotionListener {
    void addGenericMotionListener(View.OnGenericMotionListener onGenericMotionListener);

    void addKeyListener(View.OnKeyListener onKeyListener);

    void onDreamingStarted();

    void onDreamingStopped();

    void onPause();

    void onResume();

    void processEvents();

    void setKeyboardAvailable(boolean z);
}

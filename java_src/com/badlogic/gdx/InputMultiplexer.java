package com.badlogic.gdx;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.SnapshotArray;
/* loaded from: classes.dex */
public class InputMultiplexer implements InputProcessor {

    /* renamed from: a */
    public SnapshotArray<InputProcessor> f3170a;

    public InputMultiplexer() {
        this.f3170a = new SnapshotArray<>(4);
    }

    public void addProcessor(int i, InputProcessor inputProcessor) {
        if (inputProcessor != null) {
            this.f3170a.insert(i, inputProcessor);
            return;
        }
        throw new NullPointerException("processor cannot be null");
    }

    public void clear() {
        this.f3170a.clear();
    }

    public SnapshotArray<InputProcessor> getProcessors() {
        return this.f3170a;
    }

    public void removeProcessor(int i) {
        this.f3170a.removeIndex(i);
    }

    public void setProcessors(InputProcessor... inputProcessorArr) {
        this.f3170a.clear();
        this.f3170a.addAll(inputProcessorArr);
    }

    public int size() {
        return this.f3170a.size;
    }

    @Override // com.badlogic.gdx.InputProcessor
    public boolean keyDown(int i) {
        InputProcessor[] begin = this.f3170a.begin();
        try {
            int i2 = this.f3170a.size;
            for (int i3 = 0; i3 < i2; i3++) {
                if (begin[i3].keyDown(i)) {
                    this.f3170a.end();
                    return true;
                }
            }
            return false;
        } finally {
            this.f3170a.end();
        }
    }

    @Override // com.badlogic.gdx.InputProcessor
    public boolean keyTyped(char c) {
        InputProcessor[] begin = this.f3170a.begin();
        try {
            int i = this.f3170a.size;
            for (int i2 = 0; i2 < i; i2++) {
                if (begin[i2].keyTyped(c)) {
                    this.f3170a.end();
                    return true;
                }
            }
            return false;
        } finally {
            this.f3170a.end();
        }
    }

    @Override // com.badlogic.gdx.InputProcessor
    public boolean keyUp(int i) {
        InputProcessor[] begin = this.f3170a.begin();
        try {
            int i2 = this.f3170a.size;
            for (int i3 = 0; i3 < i2; i3++) {
                if (begin[i3].keyUp(i)) {
                    this.f3170a.end();
                    return true;
                }
            }
            return false;
        } finally {
            this.f3170a.end();
        }
    }

    @Override // com.badlogic.gdx.InputProcessor
    public boolean mouseMoved(int i, int i2) {
        InputProcessor[] begin = this.f3170a.begin();
        try {
            int i3 = this.f3170a.size;
            for (int i4 = 0; i4 < i3; i4++) {
                if (begin[i4].mouseMoved(i, i2)) {
                    this.f3170a.end();
                    return true;
                }
            }
            return false;
        } finally {
            this.f3170a.end();
        }
    }

    public void removeProcessor(InputProcessor inputProcessor) {
        this.f3170a.removeValue(inputProcessor, true);
    }

    @Override // com.badlogic.gdx.InputProcessor
    public boolean scrolled(float f, float f2) {
        InputProcessor[] begin = this.f3170a.begin();
        try {
            int i = this.f3170a.size;
            for (int i2 = 0; i2 < i; i2++) {
                if (begin[i2].scrolled(f, f2)) {
                    this.f3170a.end();
                    return true;
                }
            }
            return false;
        } finally {
            this.f3170a.end();
        }
    }

    @Override // com.badlogic.gdx.InputProcessor
    public boolean touchCancelled(int i, int i2, int i3, int i4) {
        InputProcessor[] begin = this.f3170a.begin();
        try {
            int i5 = this.f3170a.size;
            for (int i6 = 0; i6 < i5; i6++) {
                if (begin[i6].touchCancelled(i, i2, i3, i4)) {
                    this.f3170a.end();
                    return true;
                }
            }
            return false;
        } finally {
            this.f3170a.end();
        }
    }

    @Override // com.badlogic.gdx.InputProcessor
    public boolean touchDown(int i, int i2, int i3, int i4) {
        InputProcessor[] begin = this.f3170a.begin();
        try {
            int i5 = this.f3170a.size;
            for (int i6 = 0; i6 < i5; i6++) {
                if (begin[i6].touchDown(i, i2, i3, i4)) {
                    this.f3170a.end();
                    return true;
                }
            }
            return false;
        } finally {
            this.f3170a.end();
        }
    }

    @Override // com.badlogic.gdx.InputProcessor
    public boolean touchDragged(int i, int i2, int i3) {
        InputProcessor[] begin = this.f3170a.begin();
        try {
            int i4 = this.f3170a.size;
            for (int i5 = 0; i5 < i4; i5++) {
                if (begin[i5].touchDragged(i, i2, i3)) {
                    this.f3170a.end();
                    return true;
                }
            }
            return false;
        } finally {
            this.f3170a.end();
        }
    }

    @Override // com.badlogic.gdx.InputProcessor
    public boolean touchUp(int i, int i2, int i3, int i4) {
        InputProcessor[] begin = this.f3170a.begin();
        try {
            int i5 = this.f3170a.size;
            for (int i6 = 0; i6 < i5; i6++) {
                if (begin[i6].touchUp(i, i2, i3, i4)) {
                    this.f3170a.end();
                    return true;
                }
            }
            return false;
        } finally {
            this.f3170a.end();
        }
    }

    public InputMultiplexer(InputProcessor... inputProcessorArr) {
        SnapshotArray<InputProcessor> snapshotArray = new SnapshotArray<>(4);
        this.f3170a = snapshotArray;
        snapshotArray.addAll(inputProcessorArr);
    }

    public void addProcessor(InputProcessor inputProcessor) {
        if (inputProcessor != null) {
            this.f3170a.add(inputProcessor);
            return;
        }
        throw new NullPointerException("processor cannot be null");
    }

    public void setProcessors(Array<InputProcessor> array) {
        this.f3170a.clear();
        this.f3170a.addAll(array);
    }
}

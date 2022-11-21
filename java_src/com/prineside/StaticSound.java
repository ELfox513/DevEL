package com.prineside;

import com.badlogic.gdx.audio.Sound;
import com.prineside.tdi2.enums.StaticSoundType;
/* loaded from: classes2.dex */
public class StaticSound {
    public int durationMs;
    public Sound sound;
    public StaticSoundType type;

    public StaticSound(StaticSoundType staticSoundType, Sound sound, int i) {
        this.type = staticSoundType;
        this.sound = sound;
        this.durationMs = i;
    }
}

package com.prineside.tdi2.ibxm;
/* loaded from: classes2.dex */
public class Envelope {
    public boolean enabled;
    public int loopEndTick;
    public int loopStartTick;
    public boolean looped;
    public int numPoints;
    public int[] pointsAmpl;
    public int[] pointsTick;
    public boolean sustain;
    public int sustainTick;

    public Envelope() {
        this.enabled = false;
        this.sustain = false;
        this.looped = false;
        this.sustainTick = 0;
        this.loopStartTick = 0;
        this.loopEndTick = 0;
        this.numPoints = 1;
        this.pointsTick = new int[1];
        this.pointsAmpl = new int[1];
    }

    public int calculateAmpl(int i) {
        int[] iArr = this.pointsAmpl;
        int i2 = this.numPoints;
        int i3 = iArr[i2 - 1];
        if (i < this.pointsTick[i2 - 1]) {
            int i4 = 0;
            for (int i5 = 1; i5 < this.numPoints; i5++) {
                if (this.pointsTick[i5] <= i) {
                    i4 = i5;
                }
            }
            int[] iArr2 = this.pointsTick;
            int i6 = i4 + 1;
            int i7 = iArr2[i6];
            int i8 = iArr2[i4];
            int[] iArr3 = this.pointsAmpl;
            int i9 = iArr3[i6];
            int i10 = iArr3[i4];
            return i10 + (((((i9 - i10) << 24) / (i7 - i8)) * (i - i8)) >> 24);
        }
        return i3;
    }

    public int nextTick(int i, boolean z) {
        int i2;
        int i3 = i + 1;
        if (this.looped && i3 >= this.loopEndTick) {
            i3 = this.loopStartTick;
        }
        if (this.sustain && z && i3 >= (i2 = this.sustainTick)) {
            return i2;
        }
        return i3;
    }

    public void toStringBuffer(StringBuffer stringBuffer) {
        stringBuffer.append("Enabled: " + this.enabled + '\n');
        stringBuffer.append("Sustain: " + this.sustain + '\n');
        stringBuffer.append("Looped: " + this.looped + '\n');
        stringBuffer.append("Sustain Tick: " + this.sustainTick + '\n');
        stringBuffer.append("Loop Start Tick: " + this.loopStartTick + '\n');
        stringBuffer.append("Loop End Tick: " + this.loopEndTick + '\n');
        stringBuffer.append("Num Points: " + this.numPoints + '\n');
        stringBuffer.append("Points: ");
        for (int i = 0; i < this.numPoints; i++) {
            stringBuffer.append("(" + this.pointsTick[i] + ", " + this.pointsAmpl[i] + "), ");
        }
        stringBuffer.append('\n');
    }

    public Envelope(Envelope envelope) {
        this.enabled = false;
        this.sustain = false;
        this.looped = false;
        this.sustainTick = 0;
        this.loopStartTick = 0;
        this.loopEndTick = 0;
        this.numPoints = 1;
        this.pointsTick = new int[1];
        this.pointsAmpl = new int[1];
        this.enabled = envelope.enabled;
        this.sustain = envelope.sustain;
        this.looped = envelope.looped;
        this.sustainTick = envelope.sustainTick;
        this.loopStartTick = envelope.loopStartTick;
        this.loopEndTick = envelope.loopEndTick;
        this.numPoints = envelope.numPoints;
        int[] iArr = new int[envelope.pointsTick.length];
        this.pointsTick = iArr;
        System.arraycopy(envelope.pointsTick, 0, iArr, 0, iArr.length);
        int[] iArr2 = new int[envelope.pointsAmpl.length];
        this.pointsAmpl = iArr2;
        System.arraycopy(envelope.pointsAmpl, 0, iArr2, 0, iArr2.length);
    }
}

package com.prineside.tdi2.ibxm;
/* loaded from: classes2.dex */
public class Instrument {
    public int[] keyToSample;
    public String name;
    public int numSamples;
    public Envelope panningEnvelope;
    public Sample[] samples;
    public int vibratoDepth;
    public int vibratoRate;
    public int vibratoSweep;
    public int vibratoType;
    public Envelope volumeEnvelope;
    public int volumeFadeOut;

    public Instrument() {
        this.name = "";
        this.numSamples = 1;
        this.vibratoType = 0;
        this.vibratoSweep = 0;
        this.vibratoDepth = 0;
        this.vibratoRate = 0;
        this.volumeFadeOut = 0;
        this.volumeEnvelope = new Envelope();
        this.panningEnvelope = new Envelope();
        this.keyToSample = new int[97];
        this.samples = new Sample[]{new Sample()};
    }

    public void toStringBuffer(StringBuffer stringBuffer) {
        stringBuffer.append("Name: " + this.name + '\n');
        if (this.numSamples > 0) {
            stringBuffer.append("Num Samples: " + this.numSamples + '\n');
            stringBuffer.append("Vibrato Type: " + this.vibratoType + '\n');
            stringBuffer.append("Vibrato Sweep: " + this.vibratoSweep + '\n');
            stringBuffer.append("Vibrato Depth: " + this.vibratoDepth + '\n');
            stringBuffer.append("Vibrato Rate: " + this.vibratoRate + '\n');
            stringBuffer.append("Volume Fade Out: " + this.volumeFadeOut + '\n');
            stringBuffer.append("Volume Envelope:\n");
            this.volumeEnvelope.toStringBuffer(stringBuffer);
            stringBuffer.append("Panning Envelope:\n");
            this.panningEnvelope.toStringBuffer(stringBuffer);
            for (int i = 0; i < this.numSamples; i++) {
                stringBuffer.append("Sample " + i + ":\n");
                this.samples[i].toStringBuffer(stringBuffer);
            }
            stringBuffer.append("Key To Sample: ");
            for (int i2 = 1; i2 < 97; i2++) {
                stringBuffer.append(this.keyToSample[i2] + ", ");
            }
            stringBuffer.append('\n');
        }
    }

    public Instrument(Instrument instrument) {
        this.name = "";
        this.numSamples = 1;
        this.vibratoType = 0;
        this.vibratoSweep = 0;
        this.vibratoDepth = 0;
        this.vibratoRate = 0;
        this.volumeFadeOut = 0;
        this.volumeEnvelope = new Envelope();
        this.panningEnvelope = new Envelope();
        this.keyToSample = new int[97];
        this.samples = new Sample[]{new Sample()};
        this.name = instrument.name;
        this.numSamples = instrument.numSamples;
        this.vibratoType = instrument.vibratoType;
        this.vibratoSweep = instrument.vibratoSweep;
        this.vibratoDepth = instrument.vibratoDepth;
        this.vibratoRate = instrument.vibratoRate;
        this.volumeFadeOut = instrument.volumeFadeOut;
        this.volumeEnvelope = new Envelope(instrument.volumeEnvelope);
        this.panningEnvelope = new Envelope(instrument.panningEnvelope);
        int[] iArr = new int[instrument.keyToSample.length];
        this.keyToSample = iArr;
        System.arraycopy(instrument.keyToSample, 0, iArr, 0, iArr.length);
        this.samples = new Sample[instrument.samples.length];
        for (int i = 0; i < instrument.samples.length; i++) {
            this.samples[i] = new Sample(instrument.samples[i]);
        }
    }
}

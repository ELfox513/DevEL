package com.prineside.tdi2.ibxm;

import com.badlogic.gdx.net.HttpStatus;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.managers.BasicLevelManager;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
/* loaded from: classes2.dex */
public class Module {

    /* renamed from: a */
    public static final byte[] f9447a = new byte[4096];
    public int c2Rate;
    public int defaultGVol;
    public int[] defaultPanning;
    public int defaultSpeed;
    public int defaultTempo;
    public boolean fastVolSlides;
    public int gain;
    public Instrument[] instruments;
    public boolean linearPeriods;
    public int numChannels;
    public int numInstruments;
    public int numPatterns;
    public Pattern[] patterns;
    public int restartPos;
    public int[] sequence;
    public int sequenceLength;
    public String songName;

    public Module() {
        this.songName = "Blank";
        this.numChannels = 4;
        this.numInstruments = 1;
        this.numPatterns = 1;
        this.sequenceLength = 1;
        this.restartPos = 0;
        this.defaultGVol = 64;
        this.defaultSpeed = 6;
        this.defaultTempo = 125;
        this.c2Rate = Sample.C2_PAL;
        this.gain = 64;
        this.linearPeriods = false;
        this.fastVolSlides = false;
        this.defaultPanning = new int[]{51, HttpStatus.SC_NO_CONTENT, HttpStatus.SC_NO_CONTENT, 51};
        this.sequence = new int[]{0};
        this.patterns = new Pattern[]{new Pattern(4, 64)};
        this.instruments = new Instrument[]{new Instrument(), new Instrument()};
    }

    public static Module fromZipInputStream(InputStream inputStream) {
        Module module = null;
        try {
            ZipInputStream zipInputStream = new ZipInputStream(inputStream);
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            if (nextEntry != null) {
                byte[] bArr = new byte[(int) nextEntry.getSize()];
                synchronized (f9447a) {
                    int i = 0;
                    while (true) {
                        byte[] bArr2 = f9447a;
                        int read = zipInputStream.read(bArr2);
                        if (read == -1) {
                            break;
                        }
                        System.arraycopy(bArr2, 0, bArr, i, read);
                        i += read;
                    }
                }
                zipInputStream.closeEntry();
                module = new Module(bArr);
            }
            zipInputStream.close();
        } catch (Exception e) {
            Logger.error("Module", "failed to load module from zip input stream", e);
        }
        return module;
    }

    /* renamed from: a */
    public final void m21747a(Data data) {
        int i;
        this.songName = data.strLatin1(0, 20);
        this.sequenceLength = data.uByte(950) & 127;
        int uByte = data.uByte(951) & 127;
        this.restartPos = uByte;
        if (uByte >= this.sequenceLength) {
            this.restartPos = 0;
        }
        this.sequence = new int[128];
        for (int i2 = 0; i2 < 128; i2++) {
            int uByte2 = data.uByte(i2 + 952) & 127;
            this.sequence[i2] = uByte2;
            if (uByte2 >= this.numPatterns) {
                this.numPatterns = uByte2 + 1;
            }
        }
        int ubeShort = data.ubeShort(1082);
        int i3 = 64;
        if (ubeShort != 17224) {
            if (ubeShort != 18510) {
                if (ubeShort != 19233 && ubeShort != 19246 && ubeShort != 21556) {
                    throw new IllegalArgumentException("MOD Format not recognised!");
                }
                this.numChannels = 4;
                this.c2Rate = Sample.C2_PAL;
                this.gain = 64;
            } else {
                this.numChannels = data.uByte(Config.VIEWPORT_HEIGHT) - 48;
                this.c2Rate = Sample.C2_NTSC;
                this.gain = 32;
            }
        } else {
            int uByte3 = (data.uByte(Config.VIEWPORT_HEIGHT) - 48) * 10;
            this.numChannels = uByte3;
            this.numChannels = uByte3 + (data.uByte(1081) - 48);
            this.c2Rate = Sample.C2_NTSC;
            this.gain = 32;
        }
        this.defaultGVol = 64;
        this.defaultSpeed = 6;
        this.defaultTempo = 125;
        this.defaultPanning = new int[this.numChannels];
        int i4 = 0;
        while (true) {
            if (i4 >= this.numChannels) {
                break;
            }
            int[] iArr = this.defaultPanning;
            iArr[i4] = 51;
            int i5 = i4 & 3;
            if (i5 == 1 || i5 == 2) {
                iArr[i4] = 204;
            }
            i4++;
        }
        int i6 = 1084;
        this.patterns = new Pattern[this.numPatterns];
        int i7 = 0;
        while (i7 < this.numPatterns) {
            Pattern[] patternArr = this.patterns;
            Pattern pattern = new Pattern(this.numChannels, i3);
            patternArr[i7] = pattern;
            for (int i8 = 0; i8 < pattern.data.length; i8 += 5) {
                int uByte4 = (data.uByte(i6 + 1) | ((data.uByte(i6) & 15) << 8)) * 4;
                if (uByte4 >= 112 && uByte4 <= 6848) {
                    int log2 = Channel.log2((uByte4 << 15) / 29021) * (-12);
                    pattern.data[i8] = (byte) ((log2 + (log2 & 16384)) >> 15);
                }
                int i9 = i6 + 2;
                pattern.data[i8 + 1] = (byte) (((data.uByte(i9) & 240) >> 4) | (data.uByte(i6) & 16));
                int uByte5 = data.uByte(i9) & 15;
                int uByte6 = data.uByte(i6 + 3);
                if (uByte6 == 0 && (uByte5 < 3 || uByte5 == 10)) {
                    uByte5 = 0;
                }
                if (uByte6 == 0 && (uByte5 == 5 || uByte5 == 6)) {
                    uByte5 -= 2;
                }
                if (uByte5 == 8 && this.numChannels == 4) {
                    uByte5 = 0;
                    uByte6 = 0;
                }
                byte[] bArr = pattern.data;
                bArr[i8 + 3] = (byte) uByte5;
                bArr[i8 + 4] = (byte) uByte6;
                i6 += 4;
            }
            i7++;
            i3 = 64;
        }
        this.numInstruments = 31;
        Instrument[] instrumentArr = new Instrument[31 + 1];
        this.instruments = instrumentArr;
        instrumentArr[0] = new Instrument();
        for (i = 1; i <= this.numInstruments; i++) {
            Instrument[] instrumentArr2 = this.instruments;
            Instrument instrument = new Instrument();
            instrumentArr2[i] = instrument;
            Sample sample = instrument.samples[0];
            int i10 = i * 30;
            instrument.name = data.strLatin1(i10 - 10, 22);
            int ubeShort2 = data.ubeShort(i10 + 12) * 2;
            int uByte7 = (data.uByte(i10 + 14) & 15) << 4;
            if (uByte7 >= 128) {
                uByte7 -= 256;
            }
            sample.fineTune = uByte7;
            int uByte8 = data.uByte(i10 + 15) & 127;
            if (uByte8 > 64) {
                uByte8 = 64;
            }
            sample.volume = uByte8;
            sample.panning = -1;
            int ubeShort3 = data.ubeShort(i10 + 16) * 2;
            int ubeShort4 = data.ubeShort(i10 + 18) * 2;
            if (ubeShort3 + ubeShort4 > ubeShort2) {
                int i11 = ubeShort3 / 2;
                if (i11 + ubeShort4 <= ubeShort2) {
                    ubeShort3 = i11;
                } else {
                    ubeShort4 = ubeShort2 - ubeShort3;
                }
            }
            if (ubeShort4 < 4) {
                ubeShort3 = ubeShort2;
                ubeShort4 = 0;
            }
            sample.setSampleData(data.samS8(i6, ubeShort2), ubeShort3, ubeShort4, false);
            i6 += ubeShort2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:106:0x0280, code lost:
        if (r7 < 64) goto L108;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x028c  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0298  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x02b9  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m21746b(com.prineside.tdi2.ibxm.Data r24) {
        /*
            Method dump skipped, instructions count: 796
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.ibxm.Module.m21746b(com.prineside.tdi2.ibxm.Data):void");
    }

    /* renamed from: c */
    public final void m21745c(Data data) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        int i;
        byte b;
        byte b2;
        byte b3;
        byte b4;
        byte b5;
        Module module = this;
        if (data.uleShort(58) == 260) {
            module.songName = data.strCp850(17, 20);
            boolean startsWith = data.strLatin1(38, 20).startsWith("DigiBooster Pro");
            int uleInt = data.uleInt(60) + 60;
            module.sequenceLength = data.uleShort(64);
            module.restartPos = data.uleShort(66);
            module.numChannels = data.uleShort(68);
            module.numPatterns = data.uleShort(70);
            module.numInstruments = data.uleShort(72);
            boolean z10 = true;
            int i2 = 0;
            if ((data.uleShort(74) & 1) > 0) {
                z = true;
            } else {
                z = false;
            }
            module.linearPeriods = z;
            module.defaultGVol = 64;
            module.defaultSpeed = data.uleShort(76);
            module.defaultTempo = data.uleShort(78);
            module.c2Rate = Sample.C2_NTSC;
            module.gain = 64;
            module.defaultPanning = new int[module.numChannels];
            for (int i3 = 0; i3 < module.numChannels; i3++) {
                module.defaultPanning[i3] = 128;
            }
            module.sequence = new int[module.sequenceLength];
            for (int i4 = 0; i4 < module.sequenceLength; i4++) {
                int uByte = data.uByte(i4 + 80);
                int[] iArr = module.sequence;
                if (uByte >= module.numPatterns) {
                    uByte = 0;
                }
                iArr[i4] = uByte;
            }
            module.patterns = new Pattern[module.numPatterns];
            int i5 = 0;
            while (i5 < module.numPatterns) {
                if (data.uByte(uleInt + 4) == 0) {
                    int uleShort = data.uleShort(uleInt + 5);
                    if (uleShort < 1) {
                        uleShort = 1;
                    }
                    int i6 = module.numChannels;
                    int i7 = uleShort * i6;
                    Pattern[] patternArr = module.patterns;
                    Pattern pattern = new Pattern(i6, uleShort);
                    patternArr[i5] = pattern;
                    int uleShort2 = data.uleShort(uleInt + 7);
                    int uleInt2 = uleInt + data.uleInt(uleInt);
                    int i8 = uleInt2 + uleShort2;
                    if (uleShort2 > 0) {
                        int i9 = 0;
                        for (int i10 = 0; i10 < i7; i10++) {
                            int uByte2 = data.uByte(uleInt2);
                            if ((uByte2 & 128) == 0) {
                                uByte2 = 31;
                            } else {
                                uleInt2++;
                            }
                            if ((uByte2 & 1) > 0) {
                                i = uleInt2 + 1;
                                b = data.sByte(uleInt2);
                            } else {
                                i = uleInt2;
                                b = 0;
                            }
                            int i11 = i9 + 1;
                            pattern.data[i9] = b;
                            if ((uByte2 & 2) > 0) {
                                b2 = data.sByte(i);
                                i++;
                            } else {
                                b2 = 0;
                            }
                            int i12 = i11 + 1;
                            pattern.data[i11] = b2;
                            if ((uByte2 & 4) > 0) {
                                b3 = data.sByte(i);
                                i++;
                            } else {
                                b3 = 0;
                            }
                            int i13 = i12 + 1;
                            pattern.data[i12] = b3;
                            if ((uByte2 & 8) > 0) {
                                b4 = data.sByte(i);
                                i++;
                            } else {
                                b4 = 0;
                            }
                            if ((uByte2 & 16) > 0) {
                                uleInt2 = i + 1;
                                b5 = data.sByte(i);
                            } else {
                                uleInt2 = i;
                                b5 = 0;
                            }
                            if (b4 >= 64) {
                                b4 = 0;
                                b5 = 0;
                            }
                            byte[] bArr = pattern.data;
                            int i14 = i13 + 1;
                            bArr[i13] = b4;
                            i9 = i14 + 1;
                            bArr[i14] = b5;
                        }
                    }
                    i5++;
                    uleInt = i8;
                } else {
                    throw new IllegalArgumentException("Unknown pattern packing type!");
                }
            }
            Instrument[] instrumentArr = new Instrument[module.numInstruments + 1];
            module.instruments = instrumentArr;
            instrumentArr[0] = new Instrument();
            int i15 = 1;
            while (i15 <= module.numInstruments) {
                Instrument[] instrumentArr2 = module.instruments;
                Instrument instrument = new Instrument();
                instrumentArr2[i15] = instrument;
                instrument.name = data.strCp850(uleInt + 4, 22);
                int uleShort3 = data.uleShort(uleInt + 27);
                if (uleShort3 > 0) {
                    instrument.numSamples = uleShort3;
                    instrument.samples = new Sample[uleShort3];
                    int i16 = 0;
                    while (i16 < 96) {
                        int i17 = i16 + 1;
                        instrument.keyToSample[i17] = data.uByte(uleInt + 33 + i16);
                        i16 = i17;
                    }
                    Envelope envelope = new Envelope();
                    instrument.volumeEnvelope = envelope;
                    envelope.pointsTick = new int[16];
                    envelope.pointsAmpl = new int[16];
                    int i18 = 0;
                    for (int i19 = 0; i19 < 12; i19++) {
                        int i20 = uleInt + 129 + (i19 * 4);
                        if (!startsWith) {
                            i18 = 0;
                        }
                        i18 += data.uleShort(i20);
                        envelope.pointsTick[i19] = i18;
                        envelope.pointsAmpl[i19] = data.uleShort(i20 + 2);
                    }
                    Envelope envelope2 = new Envelope();
                    instrument.panningEnvelope = envelope2;
                    envelope2.pointsTick = new int[16];
                    envelope2.pointsAmpl = new int[16];
                    int i21 = 0;
                    for (int i22 = 0; i22 < 12; i22++) {
                        int i23 = uleInt + 177 + (i22 * 4);
                        if (!startsWith) {
                            i21 = 0;
                        }
                        i21 += data.uleShort(i23);
                        envelope2.pointsTick[i22] = i21;
                        envelope2.pointsAmpl[i22] = data.uleShort(i23 + 2);
                    }
                    int uByte3 = data.uByte(uleInt + 225);
                    envelope.numPoints = uByte3;
                    if (uByte3 > 12) {
                        envelope.numPoints = i2;
                    }
                    int uByte4 = data.uByte(uleInt + 226);
                    envelope2.numPoints = uByte4;
                    if (uByte4 > 12) {
                        envelope2.numPoints = i2;
                    }
                    envelope.sustainTick = envelope.pointsTick[data.uByte(uleInt + 227) & 15];
                    envelope.loopStartTick = envelope.pointsTick[data.uByte(uleInt + 228) & 15];
                    envelope.loopEndTick = envelope.pointsTick[data.uByte(uleInt + 229) & 15];
                    envelope2.sustainTick = envelope2.pointsTick[data.uByte(uleInt + BasicLevelManager.PREVIEW_HEIGHT) & 15];
                    envelope2.loopStartTick = envelope2.pointsTick[data.uByte(uleInt + 231) & 15];
                    envelope2.loopEndTick = envelope2.pointsTick[data.uByte(uleInt + 232) & 15];
                    if (envelope.numPoints > 0 && (data.uByte(uleInt + 233) & (z10 ? 1 : 0)) > 0) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    envelope.enabled = z4;
                    int i24 = uleInt + 233;
                    if ((data.uByte(i24) & 2) > 0) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    envelope.sustain = z5;
                    if ((data.uByte(i24) & 4) > 0) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    envelope.looped = z6;
                    if (envelope2.numPoints > 0 && (data.uByte(uleInt + 234) & (z10 ? 1 : 0)) > 0) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    envelope2.enabled = z7;
                    int i25 = uleInt + 234;
                    if ((data.uByte(i25) & 2) > 0) {
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    envelope2.sustain = z8;
                    if ((data.uByte(i25) & 4) > 0) {
                        z9 = true;
                    } else {
                        z9 = false;
                    }
                    envelope2.looped = z9;
                    instrument.vibratoType = data.uByte(uleInt + 235);
                    instrument.vibratoSweep = data.uByte(uleInt + 236);
                    instrument.vibratoDepth = data.uByte(uleInt + 237);
                    instrument.vibratoRate = data.uByte(uleInt + 238);
                    instrument.volumeFadeOut = data.uleShort(uleInt + 239);
                }
                int uleInt3 = uleInt + data.uleInt(uleInt);
                int i26 = 0;
                int i27 = uleInt3;
                uleInt = (uleShort3 * 40) + uleInt3;
                while (i26 < uleShort3) {
                    Sample[] sampleArr = instrument.samples;
                    Sample sample = new Sample();
                    sampleArr[i26] = sample;
                    int uleInt4 = data.uleInt(i27);
                    int uleInt5 = data.uleInt(i27 + 4);
                    int uleInt6 = data.uleInt(i27 + 8);
                    sample.volume = data.sByte(i27 + 12);
                    sample.fineTune = data.sByte(i27 + 13);
                    int i28 = i27 + 14;
                    if ((data.uByte(i28) & 3) > 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if ((data.uByte(i28) & 2) <= 0) {
                        z10 = false;
                    }
                    if ((data.uByte(i28) & 16) > 0) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    sample.panning = data.uByte(i27 + 15);
                    sample.relNote = data.sByte(i27 + 16);
                    sample.name = data.strCp850(i27 + 18, 22);
                    i27 += 40;
                    if (!z2 || uleInt5 + uleInt6 > uleInt4) {
                        uleInt5 = uleInt4;
                        uleInt6 = 0;
                    }
                    if (z3) {
                        sample.setSampleData(data.samS16D(uleInt, uleInt4 >> 1), uleInt5 >> 1, uleInt6 >> 1, z10);
                    } else {
                        sample.setSampleData(data.samS8D(uleInt, uleInt4), uleInt5, uleInt6, z10);
                    }
                    uleInt += uleInt4;
                    i26++;
                    z10 = true;
                }
                i15++;
                module = this;
                z10 = true;
                i2 = 0;
            }
            return;
        }
        throw new IllegalArgumentException("XM format version must be 0x0104!");
    }

    public void toStringBuffer(StringBuffer stringBuffer) {
        stringBuffer.append("Song Name: " + this.songName + "\nNum Channels: " + this.numChannels + "\nNum Instruments: " + this.numInstruments + "\nNum Patterns: " + this.numPatterns + "\nSequence Length: " + this.sequenceLength + "\nRestart Pos: " + this.restartPos + "\nDefault Speed: " + this.defaultSpeed + "\nDefault Tempo: " + this.defaultTempo + "\nLinear Periods: " + this.linearPeriods + '\n');
        stringBuffer.append("Sequence: ");
        for (int i = 0; i < this.sequence.length; i++) {
            stringBuffer.append(this.sequence[i] + ", ");
        }
        stringBuffer.append('\n');
        for (int i2 = 0; i2 < this.patterns.length; i2++) {
            stringBuffer.append("Pattern " + i2 + ":\n");
            this.patterns[i2].toStringBuffer(stringBuffer);
        }
        for (int i3 = 1; i3 < this.instruments.length; i3++) {
            stringBuffer.append("Instrument " + i3 + ":\n");
            this.instruments[i3].toStringBuffer(stringBuffer);
        }
    }

    public Module(Module module) {
        this.songName = "Blank";
        this.numChannels = 4;
        this.numInstruments = 1;
        this.numPatterns = 1;
        this.sequenceLength = 1;
        int i = 0;
        this.restartPos = 0;
        this.defaultGVol = 64;
        this.defaultSpeed = 6;
        this.defaultTempo = 125;
        this.c2Rate = Sample.C2_PAL;
        this.gain = 64;
        this.linearPeriods = false;
        this.fastVolSlides = false;
        this.defaultPanning = new int[]{51, HttpStatus.SC_NO_CONTENT, HttpStatus.SC_NO_CONTENT, 51};
        this.sequence = new int[]{0};
        this.patterns = new Pattern[]{new Pattern(4, 64)};
        this.instruments = new Instrument[]{new Instrument(), new Instrument()};
        this.songName = module.songName;
        this.numChannels = module.numChannels;
        this.numInstruments = module.numInstruments;
        this.numPatterns = module.numPatterns;
        this.sequenceLength = module.sequenceLength;
        this.restartPos = module.restartPos;
        this.defaultGVol = module.defaultGVol;
        this.defaultSpeed = module.defaultSpeed;
        this.defaultTempo = module.defaultTempo;
        this.c2Rate = module.c2Rate;
        this.gain = module.gain;
        this.linearPeriods = module.linearPeriods;
        this.fastVolSlides = module.fastVolSlides;
        int[] iArr = new int[module.defaultPanning.length];
        this.defaultPanning = iArr;
        System.arraycopy(module.defaultPanning, 0, iArr, 0, iArr.length);
        int[] iArr2 = new int[module.sequence.length];
        this.sequence = iArr2;
        System.arraycopy(module.sequence, 0, iArr2, 0, iArr2.length);
        this.patterns = new Pattern[module.patterns.length];
        int i2 = 0;
        while (true) {
            Pattern[] patternArr = module.patterns;
            if (i2 >= patternArr.length) {
                break;
            }
            this.patterns[i2] = new Pattern(patternArr[i2]);
            i2++;
        }
        this.instruments = new Instrument[module.instruments.length];
        while (true) {
            Instrument[] instrumentArr = module.instruments;
            if (i >= instrumentArr.length) {
                return;
            }
            this.instruments[i] = new Instrument(instrumentArr[i]);
            i++;
        }
    }

    public Module(InputStream inputStream) {
        this(new Data(inputStream));
    }

    public Module(Data data) {
        this.songName = "Blank";
        this.numChannels = 4;
        this.numInstruments = 1;
        this.numPatterns = 1;
        this.sequenceLength = 1;
        this.restartPos = 0;
        this.defaultGVol = 64;
        this.defaultSpeed = 6;
        this.defaultTempo = 125;
        this.c2Rate = Sample.C2_PAL;
        this.gain = 64;
        this.linearPeriods = false;
        this.fastVolSlides = false;
        this.defaultPanning = new int[]{51, HttpStatus.SC_NO_CONTENT, HttpStatus.SC_NO_CONTENT, 51};
        this.sequence = new int[]{0};
        this.patterns = new Pattern[]{new Pattern(4, 64)};
        this.instruments = new Instrument[]{new Instrument(), new Instrument()};
        if (data.strLatin1(0, 17).equals("Extended Module: ")) {
            m21745c(data);
        } else if (data.strLatin1(44, 4).equals("SCRM")) {
            m21746b(data);
        } else {
            m21747a(data);
        }
    }

    public Module(byte[] bArr) {
        this(new Data(bArr));
    }
}

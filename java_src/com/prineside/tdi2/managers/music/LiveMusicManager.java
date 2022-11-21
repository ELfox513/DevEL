package com.prineside.tdi2.managers.music;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.LifecycleListener;
import com.badlogic.gdx.audio.AudioDevice;
import com.badlogic.gdx.audio.analysis.FFT;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Base64Coder;
import com.badlogic.gdx.utils.StringBuilder;
import com.badlogic.gdx.utils.Timer;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.ibxm.Data;
import com.prineside.tdi2.ibxm.IBXM;
import com.prineside.tdi2.ibxm.Module;
import com.prineside.tdi2.managers.MusicManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.shared.Notifications;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Arrays;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
@REGS(serializer = MusicManager.Serializer.class)
/* loaded from: classes2.dex */
public class LiveMusicManager extends MusicManager {

    /* renamed from: O */
    public static final float[] f10289O;
    public static final int SPECTRUM_SIZE;

    /* renamed from: C */
    public FFT f10292C;

    /* renamed from: D */
    public float[] f10293D;

    /* renamed from: E */
    public boolean f10294E;

    /* renamed from: G */
    public AudioDevice f10295G;

    /* renamed from: H */
    public boolean f10296H;

    /* renamed from: I */
    public boolean f10297I;

    /* renamed from: J */
    public boolean f10298J;

    /* renamed from: K */
    public int[] f10299K;

    /* renamed from: L */
    public long f10300L;

    /* renamed from: M */
    public Thread f10301M;

    /* renamed from: N */
    public Thread f10302N;
    public IBXM ibxm;
    public float[] spectrumLeft;
    public final Object spectrumLock;
    public float spectrumMaxValue;
    public float[] spectrumRight;
    public float[] spectrumTemp;

    /* renamed from: y */
    public final Array<PcmBuffer> f10303y = new Array<>(true, 3, PcmBuffer.class);

    /* renamed from: z */
    public final PcmBuffer[] f10304z = new PcmBuffer[3];

    /* renamed from: A */
    public SynthesizerStatus f10290A = SynthesizerStatus.NOT_ACTIVE;

    /* renamed from: B */
    public PlaybackStatus f10291B = PlaybackStatus.STARTING;

    /* loaded from: classes2.dex */
    public class PcmBuffer {
        public short[] data = new short[4096];
        public int length;

        public PcmBuffer() {
        }

        /* renamed from: a */
        public void m21410a(int i) {
            if (this.data.length < i) {
                Logger.log("LiveMusicManager", "ensureCapacity " + i);
                this.data = new short[MathUtils.nextPowerOfTwo(i)];
            }
        }
    }

    /* loaded from: classes2.dex */
    public enum PlaybackStatus {
        STARTING,
        ACTIVE,
        STOPPED,
        SLEEP_NO_BUFFER,
        SLEEP_NO_AUDIO_DEVICE,
        SLEEP_APP_INACTIVE,
        SLEEP_NOT_PLAYING
    }

    /* loaded from: classes2.dex */
    public interface RestartableAudioDevice {
        void restart();
    }

    /* loaded from: classes2.dex */
    public enum SynthesizerStatus {
        NOT_ACTIVE,
        SLEEP_APP_INACTIVE,
        SLEEP_NOT_PLAYING,
        SLEEP_NO_IBXM,
        SLEEP_NO_FREE_BUFFER,
        SLEEP_NO_AUDIO_DATA,
        RESTART_PLAYBACK,
        ACTIVE
    }

    public int getSampleRate() {
        return 44100;
    }

    /* renamed from: i */
    public final int m21421i() {
        int i = 0;
        for (PcmBuffer pcmBuffer : this.f10304z) {
            if (pcmBuffer != null) {
                i++;
            }
        }
        return i;
    }

    /* renamed from: j */
    public final int m21420j() {
        return this.f10303y.size;
    }

    /* renamed from: p */
    public final void m21414p(byte[] bArr, float f) {
        m21416n(new Data(bArr), f);
    }

    public void playMusic(FileHandle fileHandle, float f) {
        m21415o(new ByteArrayInputStream(fileHandle.readBytes()), f);
    }

    /* renamed from: q */
    public final void m21413q() {
        this.f10294E = false;
        Logger.log("LiveMusicManager", "restartPlaybackThread");
        Thread thread = this.f10302N;
        if (thread != null) {
            thread.interrupt();
            Logger.log("LiveMusicManager", "restartPlaybackThread - playbackThread interrupted");
        }
        m21411s();
        Thread thread2 = new Thread(new Runnable() { // from class: com.prineside.tdi2.managers.music.a
            @Override // java.lang.Runnable
            public final void run() {
                LiveMusicManager.this.m21418l();
            }
        }, "IBXM playback");
        this.f10302N = thread2;
        thread2.setDaemon(true);
        Logger.handleThreadExceptionsForgiving(this.f10302N);
        this.f10302N.start();
    }

    /* renamed from: r */
    public final void m21412r(boolean z) {
        this.f10298J = z;
    }

    @Override // com.prineside.tdi2.managers.MusicManager
    public void setBackendVolume(float f) {
        if (f < 0.0f) {
            f = 0.0f;
        }
        if (f > 1.0f) {
            f = 1.0f;
        }
        AudioDevice audioDevice = this.f10295G;
        if (audioDevice != null) {
            audioDevice.setVolume(f * m21576c());
        }
    }

    @Override // com.prineside.tdi2.managers.MusicManager, com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        this.f9912p = true;
        this.f10297I = true;
        super.setup();
    }

    @Override // com.prineside.tdi2.managers.MusicManager
    public void stopMusic() {
        m21412r(false);
        this.ibxm = null;
        Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.music.c
            @Override // java.lang.Runnable
            public final void run() {
                LiveMusicManager.this.m21417m();
            }
        });
    }

    static {
        float[] fArr = {20.0f, 55.0f, 110.0f, 220.0f, 440.0f, 880.0f, 1760.0f, 3520.0f, 7040.0f, 14080.0f};
        f10289O = fArr;
        SPECTRUM_SIZE = fArr.length - 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public /* synthetic */ void m21419k() {
        int i;
        float[] fArr;
        while (true) {
            try {
                if (this.f10298J && this.f10297I) {
                    IBXM ibxm = this.ibxm;
                    if (ibxm == null) {
                        this.f10290A = SynthesizerStatus.SLEEP_NO_IBXM;
                        Thread.sleep(100L);
                    } else {
                        PcmBuffer pcmBuffer = null;
                        while (true) {
                            i = 0;
                            if (pcmBuffer != null) {
                                break;
                            }
                            while (true) {
                                PcmBuffer[] pcmBufferArr = this.f10304z;
                                if (i >= pcmBufferArr.length) {
                                    break;
                                }
                                PcmBuffer pcmBuffer2 = pcmBufferArr[i];
                                if (pcmBuffer2 != null) {
                                    pcmBufferArr[i] = null;
                                    pcmBuffer = pcmBuffer2;
                                    break;
                                }
                                i++;
                            }
                            if (pcmBuffer == null) {
                                boolean z = this.f10297I;
                                if (z && this.f10298J) {
                                    this.f10290A = SynthesizerStatus.SLEEP_NO_FREE_BUFFER;
                                    Thread.sleep(50L);
                                } else {
                                    if (!z) {
                                        this.f10290A = SynthesizerStatus.SLEEP_APP_INACTIVE;
                                    } else {
                                        this.f10290A = SynthesizerStatus.SLEEP_NOT_PLAYING;
                                    }
                                    Thread.sleep(200L);
                                }
                            }
                        }
                        pcmBuffer.m21410a(this.f10299K.length * 2 * 2);
                        int i2 = 0;
                        for (int i3 = 0; i3 < 2; i3++) {
                            int audio = ibxm.getAudio(this.f10299K) * 2;
                            int i4 = 0;
                            while (i4 < audio) {
                                int i5 = this.f10299K[i4];
                                if (i5 > 32767) {
                                    i5 = 32767;
                                }
                                if (i5 < -32768) {
                                    i5 = -32768;
                                }
                                pcmBuffer.data[i2] = (short) i5;
                                i4++;
                                i2++;
                            }
                            if (ibxm.getModule().restartPos != 0 && ibxm.getSequencePos() < ibxm.lastSeqPos) {
                                ibxm.setSequencePos(ibxm.getModule().restartPos);
                            }
                            ibxm.lastSeqPos = ibxm.getSequencePos();
                        }
                        pcmBuffer.length = i2;
                        Arrays.fill(pcmBuffer.data, i2, MathUtils.nextPowerOfTwo(i2 - 1) - 1, (short) 0);
                        if (i2 == 0) {
                            this.f10290A = SynthesizerStatus.SLEEP_NO_AUDIO_DATA;
                            synchronized (this.f10304z) {
                                int i6 = 0;
                                while (true) {
                                    PcmBuffer[] pcmBufferArr2 = this.f10304z;
                                    if (i6 >= pcmBufferArr2.length) {
                                        break;
                                    } else if (pcmBufferArr2[i6] == null) {
                                        pcmBufferArr2[i6] = pcmBuffer;
                                        i = 1;
                                        break;
                                    } else {
                                        i6++;
                                    }
                                }
                            }
                            if (i == 0) {
                                Logger.error("LiveMusicManager", "buffer not freed - no space");
                            }
                            Thread.sleep(5L);
                        } else {
                            int nextPowerOfTwo = MathUtils.nextPowerOfTwo(pcmBuffer.length - 1) / 2;
                            FFT fft = this.f10292C;
                            if (fft == null || fft.getTimeSize() != nextPowerOfTwo) {
                                FFT fft2 = new FFT(nextPowerOfTwo, getSampleRate());
                                this.f10292C = fft2;
                                fft2.logAverages(11, 1);
                                this.f10293D = new float[nextPowerOfTwo];
                            }
                            Game.getRealTickCount();
                            for (int i7 = 0; i7 < 2; i7++) {
                                for (int i8 = 3; i8 < nextPowerOfTwo; i8++) {
                                    this.f10293D[i8] = pcmBuffer.data[(i8 * 2) + i7] / 32768.0f;
                                }
                                this.f10292C.forward(this.f10293D);
                                float[] spectrum = this.f10292C.getSpectrum();
                                int i9 = 0;
                                while (i9 < this.spectrumTemp.length) {
                                    FFT fft3 = this.f10292C;
                                    float[] fArr2 = f10289O;
                                    int i10 = i9 + 1;
                                    int freqToIndex = this.f10292C.freqToIndex(fArr2[i10]);
                                    float f = 0.0f;
                                    for (int freqToIndex2 = fft3.freqToIndex(fArr2[i9]); freqToIndex2 <= freqToIndex; freqToIndex2++) {
                                        f += spectrum[freqToIndex2];
                                    }
                                    if (this.spectrumMaxValue < f) {
                                        this.spectrumMaxValue = f;
                                    }
                                    this.spectrumTemp[i9] = f / this.spectrumMaxValue;
                                    i9 = i10;
                                }
                                synchronized (this.spectrumLock) {
                                    float[] fArr3 = this.spectrumTemp;
                                    if (i7 == 0) {
                                        fArr = this.spectrumLeft;
                                    } else {
                                        fArr = this.spectrumRight;
                                    }
                                    System.arraycopy(fArr3, 0, fArr, 0, fArr3.length);
                                }
                            }
                            synchronized (this.f10303y) {
                                this.f10303y.add(pcmBuffer);
                            }
                            this.f10290A = SynthesizerStatus.ACTIVE;
                        }
                    }
                }
                if (!this.f10297I) {
                    this.f10290A = SynthesizerStatus.SLEEP_APP_INACTIVE;
                } else {
                    this.f10290A = SynthesizerStatus.SLEEP_NOT_PLAYING;
                }
                Thread.sleep(200L);
            } catch (InterruptedException e) {
                Logger.log("LiveMusicManager", "synthesizer stopped: " + e.getMessage());
                return;
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00ea  */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void m21418l() {
        /*
            Method dump skipped, instructions count: 353
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.managers.music.LiveMusicManager.m21418l():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public /* synthetic */ void m21417m() {
        Arrays.fill(this.spectrumLeft, 0.0f);
        Arrays.fill(this.spectrumRight, 0.0f);
    }

    @Override // com.prineside.tdi2.managers.MusicManager, com.prineside.tdi2.Manager.ManagerAdapter, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        try {
            this.f10302N.interrupt();
        } catch (Exception unused) {
        }
        try {
            this.f10301M.interrupt();
        } catch (Exception unused2) {
        }
    }

    @Override // com.prineside.tdi2.managers.MusicManager
    public Module getPlayingMusic() {
        IBXM ibxm = this.ibxm;
        if (ibxm == null) {
            return null;
        }
        return ibxm.getModule();
    }

    /* renamed from: n */
    public final void m21416n(Data data, float f) {
        try {
            playMusic(new Module(data), f);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: o */
    public final void m21415o(InputStream inputStream, float f) {
        try {
            ZipInputStream zipInputStream = new ZipInputStream(inputStream);
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            if (nextEntry != null) {
                byte[] bArr = new byte[(int) nextEntry.getSize()];
                byte[] bArr2 = new byte[4096];
                int i = 0;
                while (true) {
                    int read = zipInputStream.read(bArr2);
                    if (read == -1) {
                        break;
                    }
                    System.arraycopy(bArr2, 0, bArr, i, read);
                    i += read;
                }
                zipInputStream.closeEntry();
                m21414p(bArr, f);
            }
            zipInputStream.close();
        } catch (Exception e) {
            Logger.error("LiveMusicManager", "failed to play music");
            e.printStackTrace();
        }
    }

    public void playMusic(String str, float f) {
        m21415o(new ByteArrayInputStream(Base64Coder.decode(str)), f);
    }

    /* renamed from: s */
    public final void m21411s() {
        AudioDevice audioDevice = this.f10295G;
        if (audioDevice != null) {
            if (audioDevice instanceof RestartableAudioDevice) {
                Logger.log("LiveMusicManager", "restarting old audioDevice");
                ((RestartableAudioDevice) this.f10295G).restart();
                Logger.log("LiveMusicManager", "old audioDevice restarted");
            } else {
                Logger.log("LiveMusicManager", "disposing old audioDevice");
                this.f10296H = false;
                this.f10295G.dispose();
                this.f10295G = null;
                Logger.log("LiveMusicManager", "old audioDevice disposed");
            }
        }
        IBXM ibxm = this.ibxm;
        if (ibxm != null) {
            ibxm.setSampleRate(getSampleRate());
        }
        if (this.f10295G != null) {
            return;
        }
        try {
            Logger.log("LiveMusicManager", "creating new audio device...");
            this.f10295G = Game.f8589i.actionResolver.newAudioDevice(getSampleRate(), false);
            this.f10296H = true;
            Logger.log("LiveMusicManager", "set up new audio device");
        } catch (Exception e) {
            Logger.error("LiveMusicManager", "failed to setup audio device", e);
            Timer.schedule(new Timer.Task() { // from class: com.prineside.tdi2.managers.music.LiveMusicManager.2
                @Override // com.badlogic.gdx.utils.Timer.Task, java.lang.Runnable
                public void run() {
                    Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.music.LiveMusicManager.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            UiManager uiManager;
                            Notifications notifications;
                            Game game = Game.f8589i;
                            if (game != null && (uiManager = game.uiManager) != null && (notifications = uiManager.notifications) != null) {
                                notifications.add("Failed to setup audio device", null, MaterialColor.ORANGE.P800, StaticSoundType.FAIL);
                            }
                        }
                    });
                }
            }, 5.0f);
        }
    }

    public LiveMusicManager() {
        int i = SPECTRUM_SIZE;
        this.spectrumLeft = new float[i];
        this.spectrumRight = new float[i];
        this.spectrumTemp = new float[i];
        this.spectrumMaxValue = 10.0f;
        this.spectrumLock = new Object();
        this.f10299K = new int[1];
        this.f10300L = -1L;
        if (Config.isHeadless()) {
            return;
        }
        Logger.log("LiveMusicManager", "initializing");
        for (int i2 = 0; i2 < 3; i2++) {
            this.f10304z[i2] = new PcmBuffer();
        }
        Thread thread = new Thread(new Runnable() { // from class: com.prineside.tdi2.managers.music.b
            @Override // java.lang.Runnable
            public final void run() {
                LiveMusicManager.this.m21419k();
            }
        }, "IBXM synthesizer");
        this.f10301M = thread;
        thread.setDaemon(true);
        Logger.handleThreadExceptionsForgiving(this.f10301M);
        this.f10301M.start();
        m21413q();
        Gdx.app.addLifecycleListener(new LifecycleListener() { // from class: com.prineside.tdi2.managers.music.LiveMusicManager.1
            @Override // com.badlogic.gdx.LifecycleListener
            public void dispose() {
            }

            @Override // com.badlogic.gdx.LifecycleListener
            public void pause() {
                LiveMusicManager.this.f10297I = false;
            }

            @Override // com.badlogic.gdx.LifecycleListener
            public void resume() {
                LiveMusicManager.this.f10297I = true;
            }
        });
    }

    @Override // com.prineside.tdi2.managers.MusicManager
    public void playMusic(Module module, float f) {
        if (module != null) {
            stopMusic();
            IBXM ibxm = new IBXM(module, getSampleRate());
            this.ibxm = ibxm;
            ibxm.setInterpolation(getInterpolation());
            int mixBufferLength = this.ibxm.getMixBufferLength();
            if (this.f10299K.length < mixBufferLength) {
                this.f10299K = new int[mixBufferLength];
            }
            setBackendVolume(f);
            m21412r(true);
            this.spectrumMaxValue = 10.0f;
            showSongNotification(this.ibxm.getModule());
            return;
        }
        throw new IllegalArgumentException("Module is null");
    }

    @Override // com.prineside.tdi2.managers.MusicManager, com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void preRender(float f) {
        StringBuilder registerValue;
        super.preRender(f);
        if (this.f10294E) {
            m21413q();
        }
        if (this.f9912p && (registerValue = Game.f8589i.debugManager.registerValue("XM music playback queue")) != null) {
            registerValue.append(m21420j());
            Game.f8589i.debugManager.registerValue("XM music free buffers").append(m21421i());
            Game.f8589i.debugManager.registerValue("XM synthesizer").append(this.f10290A.name());
            Game.f8589i.debugManager.registerValue("XM playback").append(this.f10291B.name());
        }
    }
}

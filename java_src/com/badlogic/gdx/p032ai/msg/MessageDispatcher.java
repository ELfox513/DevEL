package com.badlogic.gdx.p032ai.msg;

import com.badlogic.gdx.p032ai.GdxAI;
import com.badlogic.gdx.p032ai.Logger;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntMap;
import com.badlogic.gdx.utils.Pool;
import com.badlogic.gdx.utils.reflect.ClassReflection;
/* renamed from: com.badlogic.gdx.ai.msg.MessageDispatcher */
/* loaded from: classes.dex */
public class MessageDispatcher implements Telegraph {

    /* renamed from: e */
    public static final String f3302e = "MessageDispatcher";

    /* renamed from: f */
    public static final Pool<Telegram> f3303f = new Pool<Telegram>(16) { // from class: com.badlogic.gdx.ai.msg.MessageDispatcher.1
        @Override // com.badlogic.gdx.utils.Pool
        /* renamed from: c */
        public Telegram newObject() {
            return new Telegram();
        }
    };

    /* renamed from: a */
    public PriorityQueue<Telegram> f3304a = new PriorityQueue<>();

    /* renamed from: b */
    public IntMap<Array<Telegraph>> f3305b = new IntMap<>();

    /* renamed from: c */
    public IntMap<Array<TelegramProvider>> f3306c = new IntMap<>();

    /* renamed from: d */
    public boolean f3307d;

    /* renamed from: com.badlogic.gdx.ai.msg.MessageDispatcher$PendingMessageCallback */
    /* loaded from: classes.dex */
    public interface PendingMessageCallback {
        void report(float f, Telegraph telegraph, Telegraph telegraph2, int i, Object obj, int i2);
    }

    public void addListeners(Telegraph telegraph, int... iArr) {
        for (int i : iArr) {
            addListener(telegraph, i);
        }
    }

    public void addProviders(TelegramProvider telegramProvider, int... iArr) {
        for (int i : iArr) {
            addProvider(telegramProvider, i);
        }
    }

    public void clearListeners(int i) {
        this.f3305b.remove(i);
    }

    public void clearProviders(int i) {
        this.f3306c.remove(i);
    }

    public void clearQueue() {
        for (int i = 0; i < this.f3304a.size(); i++) {
            f3303f.free(this.f3304a.get(i));
        }
        this.f3304a.clear();
    }

    public void dispatchMessage(int i) {
        dispatchMessage(0.0f, null, null, i, null, false);
    }

    @Override // com.badlogic.gdx.p032ai.msg.Telegraph
    public boolean handleMessage(Telegram telegram) {
        return false;
    }

    public boolean isDebugEnabled() {
        return this.f3307d;
    }

    public void removeListener(Telegraph telegraph, int i) {
        Array<Telegraph> array = this.f3305b.get(i);
        if (array != null) {
            array.removeValue(telegraph, true);
        }
    }

    public void setDebugEnabled(boolean z) {
        this.f3307d = z;
    }

    /* renamed from: a */
    public final void m24389a(Telegram telegram) {
        Telegraph telegraph = telegram.receiver;
        if (telegraph != null) {
            if (!telegraph.handleMessage(telegram) && this.f3307d) {
                Logger logger = GdxAI.getLogger();
                String str = f3302e;
                logger.info(str, "Message " + telegram.message + " not handled");
            }
        } else {
            Array<Telegraph> array = this.f3305b.get(telegram.message);
            int i = 0;
            if (array != null) {
                int i2 = 0;
                while (i < array.size) {
                    if (array.get(i).handleMessage(telegram)) {
                        i2++;
                    }
                    i++;
                }
                i = i2;
            }
            if (this.f3307d && i == 0) {
                Logger logger2 = GdxAI.getLogger();
                String str2 = f3302e;
                logger2.info(str2, "Message " + telegram.message + " not handled");
            }
        }
        if (telegram.returnReceiptStatus == 1) {
            telegram.receiver = telegram.sender;
            telegram.sender = this;
            telegram.returnReceiptStatus = 2;
            m24389a(telegram);
            return;
        }
        f3303f.free(telegram);
    }

    public void addListener(Telegraph telegraph, int i) {
        Telegraph telegraph2;
        Array<Telegraph> array = this.f3305b.get(i);
        if (array == null) {
            array = new Array<>(false, 16);
            this.f3305b.put(i, array);
        }
        array.add(telegraph);
        Array<TelegramProvider> array2 = this.f3306c.get(i);
        if (array2 != null) {
            int i2 = array2.size;
            for (int i3 = 0; i3 < i2; i3++) {
                TelegramProvider telegramProvider = array2.get(i3);
                Object provideMessageInfo = telegramProvider.provideMessageInfo(i, telegraph);
                if (provideMessageInfo != null) {
                    if (ClassReflection.isInstance(Telegraph.class, telegramProvider)) {
                        telegraph2 = (Telegraph) telegramProvider;
                    } else {
                        telegraph2 = null;
                    }
                    dispatchMessage(0.0f, telegraph2, telegraph, i, provideMessageInfo, false);
                }
            }
        }
    }

    public void addProvider(TelegramProvider telegramProvider, int i) {
        Array<TelegramProvider> array = this.f3306c.get(i);
        if (array == null) {
            array = new Array<>(false, 16);
            this.f3306c.put(i, array);
        }
        array.add(telegramProvider);
    }

    public void clearListeners(int... iArr) {
        for (int i : iArr) {
            clearListeners(i);
        }
    }

    public void clearProviders(int... iArr) {
        for (int i : iArr) {
            clearProviders(i);
        }
    }

    public void dispatchMessage(Telegraph telegraph, int i) {
        dispatchMessage(0.0f, telegraph, null, i, null, false);
    }

    public void clear() {
        clearQueue();
        clearListeners();
        clearProviders();
    }

    public void dispatchMessage(Telegraph telegraph, int i, boolean z) {
        dispatchMessage(0.0f, telegraph, null, i, null, z);
    }

    public void removeListener(Telegraph telegraph, int... iArr) {
        for (int i : iArr) {
            removeListener(telegraph, i);
        }
    }

    public void scanQueue(PendingMessageCallback pendingMessageCallback) {
        float time = GdxAI.getTimepiece().getTime();
        int size = this.f3304a.size();
        for (int i = 0; i < size; i++) {
            Telegram telegram = this.f3304a.get(i);
            pendingMessageCallback.report(telegram.getTimestamp() - time, telegram.sender, telegram.receiver, telegram.message, telegram.extraInfo, telegram.returnReceiptStatus);
        }
    }

    public void update() {
        float time = GdxAI.getTimepiece().getTime();
        while (true) {
            Telegram peek = this.f3304a.peek();
            if (peek != null && peek.getTimestamp() <= time) {
                if (this.f3307d) {
                    Logger logger = GdxAI.getLogger();
                    String str = f3302e;
                    logger.info(str, "Queued telegram ready for dispatch: Sent to " + peek.receiver + ". Message code is " + peek.message);
                }
                m24389a(peek);
                this.f3304a.poll();
            } else {
                return;
            }
        }
    }

    public void clearListeners() {
        this.f3305b.clear();
    }

    public void clearProviders() {
        this.f3306c.clear();
    }

    public void dispatchMessage(int i, Object obj) {
        dispatchMessage(0.0f, null, null, i, obj, false);
    }

    public void dispatchMessage(Telegraph telegraph, int i, Object obj) {
        dispatchMessage(0.0f, telegraph, null, i, obj, false);
    }

    public void dispatchMessage(Telegraph telegraph, int i, Object obj, boolean z) {
        dispatchMessage(0.0f, telegraph, null, i, obj, z);
    }

    public void dispatchMessage(Telegraph telegraph, Telegraph telegraph2, int i) {
        dispatchMessage(0.0f, telegraph, telegraph2, i, null, false);
    }

    public void dispatchMessage(Telegraph telegraph, Telegraph telegraph2, int i, boolean z) {
        dispatchMessage(0.0f, telegraph, telegraph2, i, null, z);
    }

    public void dispatchMessage(Telegraph telegraph, Telegraph telegraph2, int i, Object obj) {
        dispatchMessage(0.0f, telegraph, telegraph2, i, obj, false);
    }

    public void dispatchMessage(Telegraph telegraph, Telegraph telegraph2, int i, Object obj, boolean z) {
        dispatchMessage(0.0f, telegraph, telegraph2, i, obj, z);
    }

    public void dispatchMessage(float f, int i) {
        dispatchMessage(f, null, null, i, null, false);
    }

    public void dispatchMessage(float f, Telegraph telegraph, int i) {
        dispatchMessage(f, telegraph, null, i, null, false);
    }

    public void dispatchMessage(float f, Telegraph telegraph, int i, boolean z) {
        dispatchMessage(f, telegraph, null, i, null, z);
    }

    public void dispatchMessage(float f, int i, Object obj) {
        dispatchMessage(f, null, null, i, obj, false);
    }

    public void dispatchMessage(float f, Telegraph telegraph, int i, Object obj) {
        dispatchMessage(f, telegraph, null, i, obj, false);
    }

    public void dispatchMessage(float f, Telegraph telegraph, int i, Object obj, boolean z) {
        dispatchMessage(f, telegraph, null, i, obj, z);
    }

    public void dispatchMessage(float f, Telegraph telegraph, Telegraph telegraph2, int i) {
        dispatchMessage(f, telegraph, telegraph2, i, null, false);
    }

    public void dispatchMessage(float f, Telegraph telegraph, Telegraph telegraph2, int i, boolean z) {
        dispatchMessage(f, telegraph, telegraph2, i, null, z);
    }

    public void dispatchMessage(float f, Telegraph telegraph, Telegraph telegraph2, int i, Object obj) {
        dispatchMessage(f, telegraph, telegraph2, i, obj, false);
    }

    public void dispatchMessage(float f, Telegraph telegraph, Telegraph telegraph2, int i, Object obj, boolean z) {
        if (telegraph == null && z) {
            throw new IllegalArgumentException("Sender cannot be null when a return receipt is needed");
        }
        Pool<Telegram> pool = f3303f;
        Telegram obtain = pool.obtain();
        obtain.sender = telegraph;
        obtain.receiver = telegraph2;
        obtain.message = i;
        obtain.extraInfo = obj;
        obtain.returnReceiptStatus = z ? 1 : 0;
        if (f <= 0.0f) {
            if (this.f3307d) {
                float time = GdxAI.getTimepiece().getTime();
                Logger logger = GdxAI.getLogger();
                String str = f3302e;
                logger.info(str, "Instant telegram dispatched at time: " + time + " by " + telegraph + " for " + telegraph2 + ". Message code is " + i);
            }
            m24389a(obtain);
            return;
        }
        float time2 = GdxAI.getTimepiece().getTime();
        obtain.setTimestamp(f + time2);
        boolean add = this.f3304a.add(obtain);
        if (!add) {
            pool.free(obtain);
        }
        if (this.f3307d) {
            if (add) {
                Logger logger2 = GdxAI.getLogger();
                String str2 = f3302e;
                logger2.info(str2, "Delayed telegram from " + telegraph + " for " + telegraph2 + " recorded at time " + time2 + ". Message code is " + i);
                return;
            }
            Logger logger3 = GdxAI.getLogger();
            String str3 = f3302e;
            logger3.info(str3, "Delayed telegram from " + telegraph + " for " + telegraph2 + " rejected by the queue. Message code is " + i);
        }
    }
}

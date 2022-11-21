package com.badlogic.gdx.p032ai.msg;

import com.badlogic.gdx.utils.Pool;
/* renamed from: com.badlogic.gdx.ai.msg.Telegram */
/* loaded from: classes.dex */
public class Telegram implements Comparable<Telegram>, Pool.Poolable {
    public static final int RETURN_RECEIPT_NEEDED = 1;
    public static final int RETURN_RECEIPT_SENT = 2;
    public static final int RETURN_RECEIPT_UNNEEDED = 0;

    /* renamed from: a */
    public float f3313a;
    public Object extraInfo;
    public int message;
    public Telegraph receiver;
    public int returnReceiptStatus;
    public Telegraph sender;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Telegram telegram = (Telegram) obj;
        if (this.message != telegram.message || Float.floatToIntBits(this.f3313a) != Float.floatToIntBits(telegram.f3313a)) {
            return false;
        }
        Telegraph telegraph = this.sender;
        if (telegraph == null) {
            if (telegram.sender != null) {
                return false;
            }
        } else if (!telegraph.equals(telegram.sender)) {
            return false;
        }
        Telegraph telegraph2 = this.receiver;
        if (telegraph2 == null) {
            if (telegram.receiver != null) {
                return false;
            }
        } else if (!telegraph2.equals(telegram.receiver)) {
            return false;
        }
        return true;
    }

    public float getTimestamp() {
        return this.f3313a;
    }

    @Override // com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        this.sender = null;
        this.receiver = null;
        this.message = 0;
        this.returnReceiptStatus = 0;
        this.extraInfo = null;
        this.f3313a = 0.0f;
    }

    public void setTimestamp(float f) {
        this.f3313a = f;
    }

    @Override // java.lang.Comparable
    public int compareTo(Telegram telegram) {
        if (equals(telegram)) {
            return 0;
        }
        return this.f3313a - telegram.f3313a < 0.0f ? -1 : 1;
    }

    public int hashCode() {
        int hashCode;
        int i = (this.message + 31) * 31;
        Telegraph telegraph = this.receiver;
        int i2 = 0;
        if (telegraph == null) {
            hashCode = 0;
        } else {
            hashCode = telegraph.hashCode();
        }
        int i3 = (i + hashCode) * 31;
        Telegraph telegraph2 = this.sender;
        if (telegraph2 != null) {
            i2 = telegraph2.hashCode();
        }
        return ((i3 + i2) * 31) + Float.floatToIntBits(this.f3313a);
    }
}

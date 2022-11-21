package com.android.p030dx.dex.code;

import com.badlogic.gdx.graphics.GL20;
import java.util.ArrayList;
import p015b2.C0438g;
import p015b2.InterfaceC0428a;
import p210w1.C7160r;
import p210w1.C7167w;
import p218x1.AbstractC7204a;
import p218x1.AbstractC7232t;
import p218x1.AbstractC7233u;
import p218x1.C7214e0;
/* renamed from: com.android.dx.dex.code.ArrayData */
/* loaded from: classes.dex */
public final class ArrayData extends VariableSizeInsn {
    private final AbstractC7204a arrayType;
    private final int elemWidth;
    private final int initLength;
    private final CodeAddress user;
    private final ArrayList<AbstractC7204a> values;

    @Override // com.android.p030dx.dex.code.DalvInsn
    public DalvInsn withRegisters(C7160r c7160r) {
        return new ArrayData(getPosition(), this.user, this.values, this.arrayType);
    }

    public ArrayData(C7167w c7167w, CodeAddress codeAddress, ArrayList<AbstractC7204a> arrayList, AbstractC7204a abstractC7204a) {
        super(c7167w, C7160r.f36212a);
        if (codeAddress != null) {
            if (arrayList != null) {
                if (arrayList.size() > 0) {
                    this.arrayType = abstractC7204a;
                    if (abstractC7204a != C7214e0.f36582z && abstractC7204a != C7214e0.f36581y) {
                        if (abstractC7204a != C7214e0.f36567F && abstractC7204a != C7214e0.f36562A) {
                            if (abstractC7204a != C7214e0.f36566E && abstractC7204a != C7214e0.f36564C) {
                                if (abstractC7204a != C7214e0.f36565D && abstractC7204a != C7214e0.f36563B) {
                                    throw new IllegalArgumentException("Unexpected constant type");
                                }
                                this.elemWidth = 8;
                            } else {
                                this.elemWidth = 4;
                            }
                        } else {
                            this.elemWidth = 2;
                        }
                    } else {
                        this.elemWidth = 1;
                    }
                    this.user = codeAddress;
                    this.values = arrayList;
                    this.initLength = arrayList.size();
                    return;
                }
                throw new IllegalArgumentException("Illegal number of init values");
            }
            throw new NullPointerException("values == null");
        }
        throw new NullPointerException("user == null");
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public String argString() {
        StringBuilder sb = new StringBuilder(100);
        int size = this.values.size();
        for (int i = 0; i < size; i++) {
            sb.append("\n    ");
            sb.append(i);
            sb.append(": ");
            sb.append(this.values.get(i).toHuman());
        }
        return sb.toString();
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public int codeSize() {
        return (((this.initLength * this.elemWidth) + 1) / 2) + 4;
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public String listingString0(boolean z) {
        int address = this.user.getAddress();
        StringBuilder sb = new StringBuilder(100);
        int size = this.values.size();
        sb.append("fill-array-data-payload // for fill-array-data @ ");
        sb.append(C0438g.m26478g(address));
        for (int i = 0; i < size; i++) {
            sb.append("\n  ");
            sb.append(i);
            sb.append(": ");
            sb.append(this.values.get(i).toHuman());
        }
        return sb.toString();
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public void writeTo(InterfaceC0428a interfaceC0428a) {
        int size = this.values.size();
        interfaceC0428a.writeShort(GL20.GL_SRC_COLOR);
        interfaceC0428a.writeShort(this.elemWidth);
        interfaceC0428a.writeInt(this.initLength);
        int i = this.elemWidth;
        if (i != 1) {
            if (i != 2) {
                if (i != 4) {
                    if (i == 8) {
                        for (int i2 = 0; i2 < size; i2++) {
                            interfaceC0428a.writeLong(((AbstractC7233u) this.values.get(i2)).mo2061A());
                        }
                    }
                } else {
                    for (int i3 = 0; i3 < size; i3++) {
                        interfaceC0428a.writeInt(((AbstractC7232t) this.values.get(i3)).mo2057z());
                    }
                }
            } else {
                for (int i4 = 0; i4 < size; i4++) {
                    interfaceC0428a.writeShort((short) ((AbstractC7232t) this.values.get(i4)).mo2057z());
                }
            }
        } else {
            for (int i5 = 0; i5 < size; i5++) {
                interfaceC0428a.writeByte((byte) ((AbstractC7232t) this.values.get(i5)).mo2057z());
            }
        }
        if (this.elemWidth == 1 && size % 2 != 0) {
            interfaceC0428a.writeByte(0);
        }
    }
}

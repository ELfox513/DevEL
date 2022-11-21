package com.badlogic.gdx.graphics.g3d.particles;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.reflect.ArrayReflection;
/* loaded from: classes.dex */
public class ParallelArray {
    public int capacity;

    /* renamed from: a */
    public Array<Channel> f4499a = new Array<>(false, 2, Channel.class);
    public int size = 0;

    /* loaded from: classes.dex */
    public abstract class Channel {
        public Object data;

        /* renamed from: id */
        public int f4501id;
        public int strideSize;

        public abstract void add(int i, Object... objArr);

        public abstract void setCapacity(int i);

        public abstract void swap(int i, int i2);

        public Channel(int i, Object obj, int i2) {
            this.f4501id = i;
            this.strideSize = i2;
            this.data = obj;
        }
    }

    /* loaded from: classes.dex */
    public interface ChannelInitializer<T extends Channel> {
        void init(T t);
    }

    /* loaded from: classes.dex */
    public class FloatChannel extends Channel {
        public float[] data;

        public FloatChannel(int i, int i2, int i3) {
            super(i, new float[i3 * i2], i2);
            this.data = (float[]) super.data;
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParallelArray.Channel
        public void add(int i, Object... objArr) {
            int i2 = this.strideSize;
            int i3 = ParallelArray.this.size * i2;
            int i4 = i2 + i3;
            int i5 = 0;
            while (i3 < i4) {
                this.data[i3] = ((Float) objArr[i5]).floatValue();
                i3++;
                i5++;
            }
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParallelArray.Channel
        public void setCapacity(int i) {
            int i2 = this.strideSize * i;
            float[] fArr = new float[i2];
            float[] fArr2 = this.data;
            System.arraycopy(fArr2, 0, fArr, 0, Math.min(fArr2.length, i2));
            this.data = fArr;
            super.data = fArr;
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParallelArray.Channel
        public void swap(int i, int i2) {
            int i3 = this.strideSize;
            int i4 = i * i3;
            int i5 = i2 * i3;
            int i6 = i3 + i4;
            while (i4 < i6) {
                float[] fArr = this.data;
                float f = fArr[i4];
                fArr[i4] = fArr[i5];
                fArr[i5] = f;
                i4++;
                i5++;
            }
        }
    }

    /* loaded from: classes.dex */
    public class IntChannel extends Channel {
        public int[] data;

        public IntChannel(int i, int i2, int i3) {
            super(i, new int[i3 * i2], i2);
            this.data = (int[]) super.data;
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParallelArray.Channel
        public void add(int i, Object... objArr) {
            int i2 = this.strideSize;
            int i3 = ParallelArray.this.size * i2;
            int i4 = i2 + i3;
            int i5 = 0;
            while (i3 < i4) {
                this.data[i3] = ((Integer) objArr[i5]).intValue();
                i3++;
                i5++;
            }
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParallelArray.Channel
        public void setCapacity(int i) {
            int i2 = this.strideSize * i;
            int[] iArr = new int[i2];
            int[] iArr2 = this.data;
            System.arraycopy(iArr2, 0, iArr, 0, Math.min(iArr2.length, i2));
            this.data = iArr;
            super.data = iArr;
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParallelArray.Channel
        public void swap(int i, int i2) {
            int i3 = this.strideSize;
            int i4 = i * i3;
            int i5 = i2 * i3;
            int i6 = i3 + i4;
            while (i4 < i6) {
                int[] iArr = this.data;
                int i7 = iArr[i4];
                iArr[i4] = iArr[i5];
                iArr[i5] = i7;
                i4++;
                i5++;
            }
        }
    }

    /* loaded from: classes.dex */
    public class ObjectChannel<T> extends Channel {

        /* renamed from: b */
        public Class<T> f4505b;
        public T[] data;

        public ObjectChannel(int i, int i2, int i3, Class<T> cls) {
            super(i, ArrayReflection.newInstance(cls, i3 * i2), i2);
            this.f4505b = cls;
            this.data = (T[]) ((Object[]) super.data);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.badlogic.gdx.graphics.g3d.particles.ParallelArray.Channel
        public void add(int i, Object... objArr) {
            int i2 = this.strideSize;
            int i3 = ParallelArray.this.size * i2;
            int i4 = i2 + i3;
            int i5 = 0;
            while (i3 < i4) {
                this.data[i3] = objArr[i5];
                i3++;
                i5++;
            }
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParallelArray.Channel
        public void setCapacity(int i) {
            T[] tArr = (T[]) ((Object[]) ArrayReflection.newInstance(this.f4505b, this.strideSize * i));
            T[] tArr2 = this.data;
            System.arraycopy(tArr2, 0, tArr, 0, Math.min(tArr2.length, tArr.length));
            this.data = tArr;
            super.data = tArr;
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParallelArray.Channel
        public void swap(int i, int i2) {
            int i3 = this.strideSize;
            int i4 = i * i3;
            int i5 = i2 * i3;
            int i6 = i3 + i4;
            while (i4 < i6) {
                T[] tArr = this.data;
                T t = tArr[i4];
                tArr[i4] = tArr[i5];
                tArr[i5] = t;
                i4++;
                i5++;
            }
        }
    }

    public <T extends Channel> T addChannel(ChannelDescriptor channelDescriptor) {
        return (T) addChannel(channelDescriptor, null);
    }

    /* renamed from: b */
    public final int m24122b(int i) {
        int i2 = 0;
        while (true) {
            Array<Channel> array = this.f4499a;
            if (i2 < array.size) {
                if (array.items[i2].f4501id == i) {
                    return i2;
                }
                i2++;
            } else {
                return -1;
            }
        }
    }

    public <T> void removeArray(int i) {
        this.f4499a.removeIndex(m24122b(i));
    }

    /* loaded from: classes.dex */
    public static class ChannelDescriptor {
        public int count;

        /* renamed from: id */
        public int f4502id;
        public Class<?> type;

        public ChannelDescriptor(int i, Class<?> cls, int i2) {
            this.f4502id = i;
            this.type = cls;
            this.count = i2;
        }
    }

    /* renamed from: a */
    public final <T extends Channel> T m24123a(ChannelDescriptor channelDescriptor) {
        Class<?> cls = channelDescriptor.type;
        if (cls == Float.TYPE) {
            return new FloatChannel(channelDescriptor.f4502id, channelDescriptor.count, this.capacity);
        }
        if (cls == Integer.TYPE) {
            return new IntChannel(channelDescriptor.f4502id, channelDescriptor.count, this.capacity);
        }
        return new ObjectChannel(channelDescriptor.f4502id, channelDescriptor.count, this.capacity, cls);
    }

    public <T extends Channel> T addChannel(ChannelDescriptor channelDescriptor, ChannelInitializer<T> channelInitializer) {
        T t = (T) getChannel(channelDescriptor);
        if (t == null) {
            t = (T) m24123a(channelDescriptor);
            if (channelInitializer != null) {
                channelInitializer.init(t);
            }
            this.f4499a.add(t);
        }
        return t;
    }

    public void addElement(Object... objArr) {
        if (this.size != this.capacity) {
            int i = 0;
            Array.ArrayIterator<Channel> it = this.f4499a.iterator();
            while (it.hasNext()) {
                Channel next = it.next();
                next.add(i, objArr);
                i += next.strideSize;
            }
            this.size++;
            return;
        }
        throw new GdxRuntimeException("Capacity reached, cannot add other elements");
    }

    public void clear() {
        this.f4499a.clear();
        this.size = 0;
    }

    public <T extends Channel> T getChannel(ChannelDescriptor channelDescriptor) {
        Array.ArrayIterator<Channel> it = this.f4499a.iterator();
        while (it.hasNext()) {
            T t = (T) it.next();
            if (t.f4501id == channelDescriptor.f4502id) {
                return t;
            }
        }
        return null;
    }

    public void removeElement(int i) {
        int i2 = this.size - 1;
        Array.ArrayIterator<Channel> it = this.f4499a.iterator();
        while (it.hasNext()) {
            it.next().swap(i, i2);
        }
        this.size = i2;
    }

    public void setCapacity(int i) {
        if (this.capacity != i) {
            Array.ArrayIterator<Channel> it = this.f4499a.iterator();
            while (it.hasNext()) {
                it.next().setCapacity(i);
            }
            this.capacity = i;
        }
    }

    public ParallelArray(int i) {
        this.capacity = i;
    }
}

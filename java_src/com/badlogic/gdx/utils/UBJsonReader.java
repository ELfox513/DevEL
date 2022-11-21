package com.badlogic.gdx.utils;

import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.JsonValue;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public class UBJsonReader implements BaseJsonReader {
    public boolean oldFormat = true;

    /* renamed from: f */
    public long m23488f(DataInputStream dataInputStream, boolean z, long j) {
        return m23489e(dataInputStream, dataInputStream.readByte(), z, j);
    }

    /* renamed from: g */
    public String m23487g(DataInputStream dataInputStream, byte b) {
        return m23486h(dataInputStream, false, b);
    }

    /* renamed from: i */
    public String m23485i(DataInputStream dataInputStream, long j) {
        byte[] bArr = new byte[(int) j];
        dataInputStream.readFully(bArr);
        return new String(bArr, "UTF-8");
    }

    /* renamed from: j */
    public short m23484j(DataInputStream dataInputStream) {
        return (short) (dataInputStream.readByte() & 255);
    }

    /* renamed from: k */
    public long m23483k(DataInputStream dataInputStream) {
        return dataInputStream.readInt() & (-1);
    }

    /* renamed from: l */
    public int m23482l(DataInputStream dataInputStream) {
        return dataInputStream.readShort() & 65535;
    }

    @Override // com.badlogic.gdx.utils.BaseJsonReader
    public JsonValue parse(InputStream inputStream) {
        DataInputStream dataInputStream;
        DataInputStream dataInputStream2 = null;
        try {
            try {
                dataInputStream = new DataInputStream(inputStream);
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e) {
            e = e;
        }
        try {
            JsonValue parse = parse(dataInputStream);
            StreamUtils.closeQuietly(dataInputStream);
            return parse;
        } catch (IOException e2) {
            e = e2;
            throw new SerializationException(e);
        } catch (Throwable th2) {
            th = th2;
            dataInputStream2 = dataInputStream;
            StreamUtils.closeQuietly(dataInputStream2);
            throw th;
        }
    }

    /* renamed from: a */
    public JsonValue m23493a(DataInputStream dataInputStream, byte b) {
        int readShort;
        short readByte;
        if (b == 91) {
            return m23492b(dataInputStream);
        }
        if (b == 123) {
            return m23490d(dataInputStream);
        }
        if (b == 90) {
            return new JsonValue(JsonValue.ValueType.nullValue);
        }
        if (b == 84) {
            return new JsonValue(true);
        }
        if (b == 70) {
            return new JsonValue(false);
        }
        if (b == 66) {
            return new JsonValue(m23484j(dataInputStream));
        }
        if (b == 85) {
            return new JsonValue(m23484j(dataInputStream));
        }
        if (b == 105) {
            if (this.oldFormat) {
                readByte = dataInputStream.readShort();
            } else {
                readByte = dataInputStream.readByte();
            }
            return new JsonValue(readByte);
        } else if (b == 73) {
            if (this.oldFormat) {
                readShort = dataInputStream.readInt();
            } else {
                readShort = dataInputStream.readShort();
            }
            return new JsonValue(readShort);
        } else if (b == 108) {
            return new JsonValue(dataInputStream.readInt());
        } else {
            if (b == 76) {
                return new JsonValue(dataInputStream.readLong());
            }
            if (b == 100) {
                return new JsonValue(dataInputStream.readFloat());
            }
            if (b == 68) {
                return new JsonValue(dataInputStream.readDouble());
            }
            if (b != 115 && b != 83) {
                if (b != 97 && b != 65) {
                    if (b == 67) {
                        return new JsonValue(dataInputStream.readChar());
                    }
                    throw new GdxRuntimeException("Unrecognized data type");
                }
                return m23491c(dataInputStream, b);
            }
            return new JsonValue(m23487g(dataInputStream, b));
        }
    }

    /* renamed from: b */
    public JsonValue m23492b(DataInputStream dataInputStream) {
        byte b;
        byte b2;
        JsonValue jsonValue = new JsonValue(JsonValue.ValueType.array);
        byte readByte = dataInputStream.readByte();
        if (readByte == 36) {
            b = dataInputStream.readByte();
            readByte = dataInputStream.readByte();
        } else {
            b = 0;
        }
        long j = -1;
        if (readByte == 35) {
            j = m23488f(dataInputStream, false, -1L);
            if (j >= 0) {
                if (j == 0) {
                    return jsonValue;
                }
                if (b == 0) {
                    readByte = dataInputStream.readByte();
                } else {
                    readByte = b;
                }
            } else {
                throw new GdxRuntimeException("Unrecognized data type");
            }
        }
        JsonValue jsonValue2 = null;
        long j2 = 0;
        while (dataInputStream.available() > 0 && readByte != 93) {
            JsonValue m23493a = m23493a(dataInputStream, readByte);
            m23493a.parent = jsonValue;
            if (jsonValue2 != null) {
                m23493a.prev = jsonValue2;
                jsonValue2.next = m23493a;
                jsonValue.size++;
            } else {
                jsonValue.child = m23493a;
                jsonValue.size = 1;
            }
            if (j > 0) {
                j2++;
                if (j2 >= j) {
                    break;
                }
            }
            if (b == 0) {
                b2 = dataInputStream.readByte();
            } else {
                b2 = b;
            }
            byte b3 = b2;
            jsonValue2 = m23493a;
            readByte = b3;
        }
        return jsonValue;
    }

    /* renamed from: d */
    public JsonValue m23490d(DataInputStream dataInputStream) {
        byte b;
        byte b2;
        JsonValue jsonValue = new JsonValue(JsonValue.ValueType.object);
        byte readByte = dataInputStream.readByte();
        if (readByte == 36) {
            b = dataInputStream.readByte();
            readByte = dataInputStream.readByte();
        } else {
            b = 0;
        }
        long j = -1;
        if (readByte == 35) {
            j = m23488f(dataInputStream, false, -1L);
            if (j >= 0) {
                if (j == 0) {
                    return jsonValue;
                }
                readByte = dataInputStream.readByte();
            } else {
                throw new GdxRuntimeException("Unrecognized data type");
            }
        }
        JsonValue jsonValue2 = null;
        long j2 = 0;
        while (dataInputStream.available() > 0 && readByte != 125) {
            String m23486h = m23486h(dataInputStream, true, readByte);
            if (b == 0) {
                b2 = dataInputStream.readByte();
            } else {
                b2 = b;
            }
            JsonValue m23493a = m23493a(dataInputStream, b2);
            m23493a.setName(m23486h);
            m23493a.parent = jsonValue;
            if (jsonValue2 != null) {
                m23493a.prev = jsonValue2;
                jsonValue2.next = m23493a;
                jsonValue.size++;
            } else {
                jsonValue.child = m23493a;
                jsonValue.size = 1;
            }
            if (j > 0) {
                j2++;
                if (j2 >= j) {
                    break;
                }
            }
            readByte = dataInputStream.readByte();
            jsonValue2 = m23493a;
        }
        return jsonValue;
    }

    /* renamed from: e */
    public long m23489e(DataInputStream dataInputStream, byte b, boolean z, long j) {
        int m23482l;
        if (b == 105) {
            m23482l = m23484j(dataInputStream);
        } else if (b == 73) {
            m23482l = m23482l(dataInputStream);
        } else if (b == 108) {
            return m23483k(dataInputStream);
        } else {
            if (b == 76) {
                return dataInputStream.readLong();
            }
            if (z) {
                return ((b & 255) << 24) | ((dataInputStream.readByte() & 255) << 16) | ((dataInputStream.readByte() & 255) << 8) | (dataInputStream.readByte() & 255);
            }
            return j;
        }
        return m23482l;
    }

    /* renamed from: h */
    public String m23486h(DataInputStream dataInputStream, boolean z, byte b) {
        long j = -1;
        if (b == 83) {
            j = m23488f(dataInputStream, true, -1L);
        } else if (b == 115) {
            j = m23484j(dataInputStream);
        } else if (z) {
            j = m23489e(dataInputStream, b, false, -1L);
        }
        if (j >= 0) {
            if (j > 0) {
                return m23485i(dataInputStream, j);
            }
            return "";
        }
        throw new GdxRuntimeException("Unrecognized data type, string expected");
    }

    /* renamed from: c */
    public JsonValue m23491c(DataInputStream dataInputStream, byte b) {
        long m23484j;
        byte readByte = dataInputStream.readByte();
        if (b == 65) {
            m23484j = m23483k(dataInputStream);
        } else {
            m23484j = m23484j(dataInputStream);
        }
        JsonValue jsonValue = new JsonValue(JsonValue.ValueType.array);
        JsonValue jsonValue2 = null;
        long j = 0;
        while (j < m23484j) {
            JsonValue m23493a = m23493a(dataInputStream, readByte);
            m23493a.parent = jsonValue;
            if (jsonValue2 != null) {
                jsonValue2.next = m23493a;
                jsonValue.size++;
            } else {
                jsonValue.child = m23493a;
                jsonValue.size = 1;
            }
            j++;
            jsonValue2 = m23493a;
        }
        return jsonValue;
    }

    @Override // com.badlogic.gdx.utils.BaseJsonReader
    public JsonValue parse(FileHandle fileHandle) {
        try {
            return parse(fileHandle.read(8192));
        } catch (Exception e) {
            throw new SerializationException("Error parsing file: " + fileHandle, e);
        }
    }

    public JsonValue parse(DataInputStream dataInputStream) {
        try {
            return m23493a(dataInputStream, dataInputStream.readByte());
        } finally {
            StreamUtils.closeQuietly(dataInputStream);
        }
    }
}

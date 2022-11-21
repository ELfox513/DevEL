package com.badlogic.gdx.files;

import com.badlogic.gdx.Files;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.StreamUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.RandomAccessFile;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
/* loaded from: classes.dex */
public class FileHandle {

    /* renamed from: a */
    public File f3883a;

    /* renamed from: b */
    public Files.FileType f3884b;

    /* renamed from: com.badlogic.gdx.files.FileHandle$1 */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C11901 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3885a;

        static {
            int[] iArr = new int[Files.FileType.values().length];
            f3885a = iArr;
            try {
                iArr[Files.FileType.Internal.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3885a[Files.FileType.Classpath.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3885a[Files.FileType.Absolute.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3885a[Files.FileType.External.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public FileHandle() {
    }

    /* renamed from: c */
    public static boolean m24265c(File file) {
        m24264d(file, false);
        return file.delete();
    }

    public static FileHandle tempDirectory(String str) {
        try {
            File createTempFile = File.createTempFile(str, null);
            if (createTempFile.delete()) {
                if (createTempFile.mkdir()) {
                    return new FileHandle(createTempFile);
                }
                throw new IOException("Unable to create temp directory: " + createTempFile);
            }
            throw new IOException("Unable to delete temp file: " + createTempFile);
        } catch (IOException e) {
            throw new GdxRuntimeException("Unable to create temp file.", e);
        }
    }

    /* renamed from: e */
    public final int m24263e() {
        int length = (int) length();
        if (length != 0) {
            return length;
        }
        return 512;
    }

    public void emptyDirectory() {
        emptyDirectory(false);
    }

    public long lastModified() {
        return file().lastModified();
    }

    public FileHandle[] list() {
        if (this.f3884b != Files.FileType.Classpath) {
            String[] list = file().list();
            if (list == null) {
                return new FileHandle[0];
            }
            FileHandle[] fileHandleArr = new FileHandle[list.length];
            int length = list.length;
            for (int i = 0; i < length; i++) {
                fileHandleArr[i] = child(list[i]);
            }
            return fileHandleArr;
        }
        throw new GdxRuntimeException("Cannot list a classpath directory: " + this.f3883a);
    }

    public ByteBuffer map() {
        return map(FileChannel.MapMode.READ_ONLY);
    }

    public String name() {
        return this.f3883a.getName();
    }

    public String path() {
        return this.f3883a.getPath().replace('\\', '/');
    }

    public InputStream read() {
        Files.FileType fileType = this.f3884b;
        if (fileType != Files.FileType.Classpath && ((fileType != Files.FileType.Internal || file().exists()) && (this.f3884b != Files.FileType.Local || file().exists()))) {
            try {
                return new FileInputStream(file());
            } catch (Exception e) {
                if (file().isDirectory()) {
                    throw new GdxRuntimeException("Cannot open a stream to a directory: " + this.f3883a + " (" + this.f3884b + ")", e);
                }
                throw new GdxRuntimeException("Error reading file: " + this.f3883a + " (" + this.f3884b + ")", e);
            }
        }
        InputStream resourceAsStream = FileHandle.class.getResourceAsStream("/" + this.f3883a.getPath().replace('\\', '/'));
        if (resourceAsStream != null) {
            return resourceAsStream;
        }
        throw new GdxRuntimeException("File not found: " + this.f3883a + " (" + this.f3884b + ")");
    }

    public byte[] readBytes() {
        InputStream read = read();
        try {
            try {
                return StreamUtils.copyStreamToByteArray(read, m24263e());
            } catch (IOException e) {
                throw new GdxRuntimeException("Error reading file: " + this, e);
            }
        } finally {
            StreamUtils.closeQuietly(read);
        }
    }

    public String readString() {
        return readString(null);
    }

    public Reader reader() {
        return new InputStreamReader(read());
    }

    public String toString() {
        return this.f3883a.getPath().replace('\\', '/');
    }

    public Files.FileType type() {
        return this.f3884b;
    }

    public OutputStream write(boolean z) {
        Files.FileType fileType = this.f3884b;
        if (fileType != Files.FileType.Classpath) {
            if (fileType != Files.FileType.Internal) {
                parent().mkdirs();
                try {
                    return new FileOutputStream(file(), z);
                } catch (Exception e) {
                    if (file().isDirectory()) {
                        throw new GdxRuntimeException("Cannot open a stream to a directory: " + this.f3883a + " (" + this.f3884b + ")", e);
                    }
                    throw new GdxRuntimeException("Error writing file: " + this.f3883a + " (" + this.f3884b + ")", e);
                }
            }
            throw new GdxRuntimeException("Cannot write to an internal file: " + this.f3883a);
        }
        throw new GdxRuntimeException("Cannot write to a classpath file: " + this.f3883a);
    }

    public void writeBytes(byte[] bArr, boolean z) {
        OutputStream write = write(z);
        try {
            try {
                write.write(bArr);
            } catch (IOException e) {
                throw new GdxRuntimeException("Error writing file: " + this.f3883a + " (" + this.f3884b + ")", e);
            }
        } finally {
            StreamUtils.closeQuietly(write);
        }
    }

    public void writeString(String str, boolean z) {
        writeString(str, z, null);
    }

    public Writer writer(boolean z) {
        return writer(z, null);
    }

    public FileHandle(String str) {
        this.f3883a = new File(str);
        this.f3884b = Files.FileType.Absolute;
    }

    public static FileHandle tempFile(String str) {
        try {
            return new FileHandle(File.createTempFile(str, null));
        } catch (IOException e) {
            throw new GdxRuntimeException("Unable to create temp file.", e);
        }
    }

    public FileHandle child(String str) {
        if (this.f3883a.getPath().length() == 0) {
            return new FileHandle(new File(str), this.f3884b);
        }
        return new FileHandle(new File(this.f3883a, str), this.f3884b);
    }

    public boolean delete() {
        Files.FileType fileType = this.f3884b;
        if (fileType != Files.FileType.Classpath) {
            if (fileType != Files.FileType.Internal) {
                return file().delete();
            }
            throw new GdxRuntimeException("Cannot delete an internal file: " + this.f3883a);
        }
        throw new GdxRuntimeException("Cannot delete a classpath file: " + this.f3883a);
    }

    public boolean deleteDirectory() {
        Files.FileType fileType = this.f3884b;
        if (fileType != Files.FileType.Classpath) {
            if (fileType != Files.FileType.Internal) {
                return m24265c(file());
            }
            throw new GdxRuntimeException("Cannot delete an internal file: " + this.f3883a);
        }
        throw new GdxRuntimeException("Cannot delete a classpath file: " + this.f3883a);
    }

    public void emptyDirectory(boolean z) {
        Files.FileType fileType = this.f3884b;
        if (fileType != Files.FileType.Classpath) {
            if (fileType != Files.FileType.Internal) {
                m24264d(file(), z);
                return;
            }
            throw new GdxRuntimeException("Cannot delete an internal file: " + this.f3883a);
        }
        throw new GdxRuntimeException("Cannot delete a classpath file: " + this.f3883a);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof FileHandle)) {
            return false;
        }
        FileHandle fileHandle = (FileHandle) obj;
        if (this.f3884b != fileHandle.f3884b || !path().equals(fileHandle.path())) {
            return false;
        }
        return true;
    }

    public boolean exists() {
        int i = C11901.f3885a[this.f3884b.ordinal()];
        if (i != 1) {
            if (i != 2) {
                return file().exists();
            }
        } else if (file().exists()) {
            return true;
        }
        if (FileHandle.class.getResource("/" + this.f3883a.getPath().replace('\\', '/')) != null) {
            return true;
        }
        return false;
    }

    public String extension() {
        String name = this.f3883a.getName();
        int lastIndexOf = name.lastIndexOf(46);
        if (lastIndexOf == -1) {
            return "";
        }
        return name.substring(lastIndexOf + 1);
    }

    public File file() {
        if (this.f3884b == Files.FileType.External) {
            return new File(Gdx.files.getExternalStoragePath(), this.f3883a.getPath());
        }
        return this.f3883a;
    }

    public int hashCode() {
        return ((37 + this.f3884b.hashCode()) * 67) + path().hashCode();
    }

    public boolean isDirectory() {
        if (this.f3884b == Files.FileType.Classpath) {
            return false;
        }
        return file().isDirectory();
    }

    public long length() {
        Files.FileType fileType = this.f3884b;
        if (fileType != Files.FileType.Classpath && (fileType != Files.FileType.Internal || this.f3883a.exists())) {
            return file().length();
        }
        InputStream read = read();
        try {
            long available = read.available();
            StreamUtils.closeQuietly(read);
            return available;
        } catch (Exception unused) {
            StreamUtils.closeQuietly(read);
            return 0L;
        } catch (Throwable th) {
            StreamUtils.closeQuietly(read);
            throw th;
        }
    }

    public ByteBuffer map(FileChannel.MapMode mapMode) {
        File file;
        RandomAccessFile randomAccessFile;
        if (this.f3884b != Files.FileType.Classpath) {
            RandomAccessFile randomAccessFile2 = null;
            try {
                try {
                    file = file();
                    randomAccessFile = new RandomAccessFile(file, mapMode == FileChannel.MapMode.READ_ONLY ? "r" : "rw");
                } catch (Exception e) {
                    e = e;
                }
            } catch (Throwable th) {
                th = th;
            }
            try {
                MappedByteBuffer map = randomAccessFile.getChannel().map(mapMode, 0L, file.length());
                map.order(ByteOrder.nativeOrder());
                StreamUtils.closeQuietly(randomAccessFile);
                return map;
            } catch (Exception e2) {
                e = e2;
                randomAccessFile2 = randomAccessFile;
                throw new GdxRuntimeException("Error memory mapping file: " + this + " (" + this.f3884b + ")", e);
            } catch (Throwable th2) {
                th = th2;
                randomAccessFile2 = randomAccessFile;
                StreamUtils.closeQuietly(randomAccessFile2);
                throw th;
            }
        }
        throw new GdxRuntimeException("Cannot map a classpath file: " + this);
    }

    public void mkdirs() {
        Files.FileType fileType = this.f3884b;
        if (fileType != Files.FileType.Classpath) {
            if (fileType != Files.FileType.Internal) {
                file().mkdirs();
                return;
            }
            throw new GdxRuntimeException("Cannot mkdirs with an internal file: " + this.f3883a);
        }
        throw new GdxRuntimeException("Cannot mkdirs with a classpath file: " + this.f3883a);
    }

    public void moveTo(FileHandle fileHandle) {
        int i = C11901.f3885a[this.f3884b.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if ((i == 3 || i == 4) && file().renameTo(fileHandle.file())) {
                    return;
                }
                copyTo(fileHandle);
                delete();
                if (exists() && isDirectory()) {
                    deleteDirectory();
                    return;
                }
                return;
            }
            throw new GdxRuntimeException("Cannot move a classpath file: " + this.f3883a);
        }
        throw new GdxRuntimeException("Cannot move an internal file: " + this.f3883a);
    }

    public String nameWithoutExtension() {
        String name = this.f3883a.getName();
        int lastIndexOf = name.lastIndexOf(46);
        if (lastIndexOf == -1) {
            return name;
        }
        return name.substring(0, lastIndexOf);
    }

    public FileHandle parent() {
        File parentFile = this.f3883a.getParentFile();
        if (parentFile == null) {
            if (this.f3884b == Files.FileType.Absolute) {
                parentFile = new File("/");
            } else {
                parentFile = new File("");
            }
        }
        return new FileHandle(parentFile, this.f3884b);
    }

    public String pathWithoutExtension() {
        String replace = this.f3883a.getPath().replace('\\', '/');
        int lastIndexOf = replace.lastIndexOf(46);
        if (lastIndexOf == -1) {
            return replace;
        }
        return replace.substring(0, lastIndexOf);
    }

    public String readString(String str) {
        StringBuilder sb = new StringBuilder(m24263e());
        InputStreamReader inputStreamReader = null;
        try {
            try {
                if (str == null) {
                    inputStreamReader = new InputStreamReader(read());
                } else {
                    inputStreamReader = new InputStreamReader(read(), str);
                }
                char[] cArr = new char[256];
                while (true) {
                    int read = inputStreamReader.read(cArr);
                    if (read == -1) {
                        StreamUtils.closeQuietly(inputStreamReader);
                        return sb.toString();
                    }
                    sb.append(cArr, 0, read);
                }
            } catch (IOException e) {
                throw new GdxRuntimeException("Error reading layout file: " + this, e);
            }
        } catch (Throwable th) {
            StreamUtils.closeQuietly(inputStreamReader);
            throw th;
        }
    }

    public Reader reader(String str) {
        InputStream read = read();
        try {
            return new InputStreamReader(read, str);
        } catch (UnsupportedEncodingException e) {
            StreamUtils.closeQuietly(read);
            throw new GdxRuntimeException("Error reading file: " + this, e);
        }
    }

    public FileHandle sibling(String str) {
        if (this.f3883a.getPath().length() != 0) {
            return new FileHandle(new File(this.f3883a.getParent(), str), this.f3884b);
        }
        throw new GdxRuntimeException("Cannot get the sibling of the root.");
    }

    public void writeString(String str, boolean z, String str2) {
        Writer writer = null;
        try {
            try {
                writer = writer(z, str2);
                writer.write(str);
            } catch (Exception e) {
                throw new GdxRuntimeException("Error writing file: " + this.f3883a + " (" + this.f3884b + ")", e);
            }
        } finally {
            StreamUtils.closeQuietly(writer);
        }
    }

    public Writer writer(boolean z, String str) {
        Files.FileType fileType = this.f3884b;
        if (fileType != Files.FileType.Classpath) {
            if (fileType != Files.FileType.Internal) {
                parent().mkdirs();
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(file(), z);
                    if (str == null) {
                        return new OutputStreamWriter(fileOutputStream);
                    }
                    return new OutputStreamWriter(fileOutputStream, str);
                } catch (IOException e) {
                    if (file().isDirectory()) {
                        throw new GdxRuntimeException("Cannot open a stream to a directory: " + this.f3883a + " (" + this.f3884b + ")", e);
                    }
                    throw new GdxRuntimeException("Error writing file: " + this.f3883a + " (" + this.f3884b + ")", e);
                }
            }
            throw new GdxRuntimeException("Cannot write to an internal file: " + this.f3883a);
        }
        throw new GdxRuntimeException("Cannot write to a classpath file: " + this.f3883a);
    }

    /* renamed from: a */
    public static void m24267a(FileHandle fileHandle, FileHandle fileHandle2) {
        FileHandle[] list;
        fileHandle2.mkdirs();
        for (FileHandle fileHandle3 : fileHandle.list()) {
            FileHandle child = fileHandle2.child(fileHandle3.name());
            if (fileHandle3.isDirectory()) {
                m24267a(fileHandle3, child);
            } else {
                m24266b(fileHandle3, child);
            }
        }
    }

    /* renamed from: b */
    public static void m24266b(FileHandle fileHandle, FileHandle fileHandle2) {
        try {
            fileHandle2.write(fileHandle.read(), false);
        } catch (Exception e) {
            throw new GdxRuntimeException("Error copying source file: " + fileHandle.f3883a + " (" + fileHandle.f3884b + ")\nTo destination: " + fileHandle2.f3883a + " (" + fileHandle2.f3884b + ")", e);
        }
    }

    /* renamed from: d */
    public static void m24264d(File file, boolean z) {
        File[] listFiles;
        if (file.exists() && (listFiles = file.listFiles()) != null) {
            int length = listFiles.length;
            for (int i = 0; i < length; i++) {
                if (!listFiles[i].isDirectory()) {
                    listFiles[i].delete();
                } else if (z) {
                    m24264d(listFiles[i], true);
                } else {
                    m24265c(listFiles[i]);
                }
            }
        }
    }

    public void copyTo(FileHandle fileHandle) {
        if (!isDirectory()) {
            if (fileHandle.isDirectory()) {
                fileHandle = fileHandle.child(name());
            }
            m24266b(this, fileHandle);
            return;
        }
        if (fileHandle.exists()) {
            if (!fileHandle.isDirectory()) {
                throw new GdxRuntimeException("Destination exists but is not a directory: " + fileHandle);
            }
        } else {
            fileHandle.mkdirs();
            if (!fileHandle.isDirectory()) {
                throw new GdxRuntimeException("Destination directory cannot be created: " + fileHandle);
            }
        }
        m24267a(this, fileHandle.child(name()));
    }

    public FileHandle(File file) {
        this.f3883a = file;
        this.f3884b = Files.FileType.Absolute;
    }

    public BufferedReader reader(int i) {
        return new BufferedReader(new InputStreamReader(read()), i);
    }

    public FileHandle[] list(FileFilter fileFilter) {
        if (this.f3884b != Files.FileType.Classpath) {
            String[] list = file().list();
            if (list == null) {
                return new FileHandle[0];
            }
            FileHandle[] fileHandleArr = new FileHandle[list.length];
            int i = 0;
            for (String str : list) {
                FileHandle child = child(str);
                if (fileFilter.accept(child.file())) {
                    fileHandleArr[i] = child;
                    i++;
                }
            }
            if (i < list.length) {
                FileHandle[] fileHandleArr2 = new FileHandle[i];
                System.arraycopy(fileHandleArr, 0, fileHandleArr2, 0, i);
                return fileHandleArr2;
            }
            return fileHandleArr;
        }
        throw new GdxRuntimeException("Cannot list a classpath directory: " + this.f3883a);
    }

    public int readBytes(byte[] bArr, int i, int i2) {
        InputStream read = read();
        int i3 = 0;
        while (true) {
            try {
                try {
                    int read2 = read.read(bArr, i + i3, i2 - i3);
                    if (read2 <= 0) {
                        StreamUtils.closeQuietly(read);
                        return i3 - i;
                    }
                    i3 += read2;
                } catch (IOException e) {
                    throw new GdxRuntimeException("Error reading file: " + this, e);
                }
            } catch (Throwable th) {
                StreamUtils.closeQuietly(read);
                throw th;
            }
        }
    }

    public BufferedReader reader(int i, String str) {
        try {
            return new BufferedReader(new InputStreamReader(read(), str), i);
        } catch (UnsupportedEncodingException e) {
            throw new GdxRuntimeException("Error reading file: " + this, e);
        }
    }

    public void writeBytes(byte[] bArr, int i, int i2, boolean z) {
        OutputStream write = write(z);
        try {
            try {
                write.write(bArr, i, i2);
            } catch (IOException e) {
                throw new GdxRuntimeException("Error writing file: " + this.f3883a + " (" + this.f3884b + ")", e);
            }
        } finally {
            StreamUtils.closeQuietly(write);
        }
    }

    public FileHandle(String str, Files.FileType fileType) {
        this.f3884b = fileType;
        this.f3883a = new File(str);
    }

    public BufferedInputStream read(int i) {
        return new BufferedInputStream(read(), i);
    }

    public OutputStream write(boolean z, int i) {
        return new BufferedOutputStream(write(z), i);
    }

    public FileHandle(File file, Files.FileType fileType) {
        this.f3883a = file;
        this.f3884b = fileType;
    }

    public void write(InputStream inputStream, boolean z) {
        OutputStream outputStream = null;
        try {
            try {
                outputStream = write(z);
                StreamUtils.copyStream(inputStream, outputStream);
            } catch (Exception e) {
                throw new GdxRuntimeException("Error stream writing to file: " + this.f3883a + " (" + this.f3884b + ")", e);
            }
        } finally {
            StreamUtils.closeQuietly(inputStream);
            StreamUtils.closeQuietly(outputStream);
        }
    }

    public FileHandle[] list(FilenameFilter filenameFilter) {
        if (this.f3884b != Files.FileType.Classpath) {
            File file = file();
            String[] list = file.list();
            if (list == null) {
                return new FileHandle[0];
            }
            FileHandle[] fileHandleArr = new FileHandle[list.length];
            int i = 0;
            for (String str : list) {
                if (filenameFilter.accept(file, str)) {
                    fileHandleArr[i] = child(str);
                    i++;
                }
            }
            if (i < list.length) {
                FileHandle[] fileHandleArr2 = new FileHandle[i];
                System.arraycopy(fileHandleArr, 0, fileHandleArr2, 0, i);
                return fileHandleArr2;
            }
            return fileHandleArr;
        }
        throw new GdxRuntimeException("Cannot list a classpath directory: " + this.f3883a);
    }

    public FileHandle[] list(String str) {
        if (this.f3884b != Files.FileType.Classpath) {
            String[] list = file().list();
            if (list == null) {
                return new FileHandle[0];
            }
            FileHandle[] fileHandleArr = new FileHandle[list.length];
            int i = 0;
            for (String str2 : list) {
                if (str2.endsWith(str)) {
                    fileHandleArr[i] = child(str2);
                    i++;
                }
            }
            if (i < list.length) {
                FileHandle[] fileHandleArr2 = new FileHandle[i];
                System.arraycopy(fileHandleArr, 0, fileHandleArr2, 0, i);
                return fileHandleArr2;
            }
            return fileHandleArr;
        }
        throw new GdxRuntimeException("Cannot list a classpath directory: " + this.f3883a);
    }
}

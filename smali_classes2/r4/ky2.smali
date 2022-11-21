.class public final Lr4/ky2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)Z
    .locals 1

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final b(Landroid/content/Context;Lr4/hx2;)I
    .locals 13

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "lib"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/16 v2, 0x1399

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/16 v5, 0x3e8

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-nez v1, :cond_0

    const-string v0, "No lib/"

    invoke-virtual {p1, v2, v0}, Lr4/hx2;->e(ILjava/lang/String;)Lj5/i;

    :goto_0
    const/16 v0, 0x3e8

    goto/16 :goto_5

    :cond_0
    new-instance v1, Lr4/v53;

    const-string v10, ".*\\.so$"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v10

    invoke-direct {v1, v10}, Lr4/v53;-><init>(Ljava/util/regex/Pattern;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_8

    array-length v1, v0

    if-nez v1, :cond_1

    goto/16 :goto_4

    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x14

    :try_start_1
    new-array v10, v0, [B

    invoke-virtual {v1, v10}, Ljava/io/FileInputStream;->read([B)I

    move-result v12

    if-ne v12, v0, :cond_2

    new-array v0, v11, [B

    aput-byte v2, v0, v2

    aput-byte v2, v0, v9

    aget-byte v12, v10, v7

    if-ne v12, v11, :cond_3

    invoke-static {v10, v6, p0, p1}, Lr4/ky2;->c([BLjava/lang/String;Landroid/content/Context;Lr4/hx2;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :cond_3
    const/16 v11, 0x13

    :try_start_3
    aget-byte v11, v10, v11

    aput-byte v11, v0, v2

    const/16 v2, 0x12

    aget-byte v2, v10, v2

    aput-byte v2, v0, v9

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    if-eq v0, v8, :cond_7

    const/16 v2, 0x28

    if-eq v0, v2, :cond_6

    const/16 v2, 0x3e

    if-eq v0, v2, :cond_5

    const/16 v2, 0xb7

    if-eq v0, v2, :cond_4

    invoke-static {v10, v6, p0, p1}, Lr4/ky2;->c([BLjava/lang/String;Landroid/content/Context;Lr4/hx2;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_4
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    const/4 v0, 0x6

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    const/4 v0, 0x7

    goto :goto_5

    :cond_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    const/4 v0, 0x3

    goto :goto_5

    :cond_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v0, 0x5

    goto :goto_5

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-static {v0, v1}, Lr4/rk3;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_2
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, p0, p1}, Lr4/ky2;->c([BLjava/lang/String;Landroid/content/Context;Lr4/hx2;)V

    :goto_3
    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    :goto_4
    const-string v0, "No .so"

    invoke-virtual {p1, v2, v0}, Lr4/hx2;->e(ILjava/lang/String;)Lj5/i;

    goto/16 :goto_0

    :goto_5
    if-ne v0, v5, :cond_10

    invoke-static {p0, p1}, Lr4/ky2;->d(Landroid/content/Context;Lr4/hx2;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v0, "Empty dev arch"

    invoke-static {v6, v0, p0, p1}, Lr4/ky2;->c([BLjava/lang/String;Landroid/content/Context;Lr4/hx2;)V

    :goto_6
    const/4 v0, 0x1

    goto :goto_9

    :cond_9
    const-string v1, "i686"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_8

    :cond_a
    const-string v1, "x86_64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x7

    goto :goto_9

    :cond_b
    const-string v1, "arm64-v8a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x6

    goto :goto_9

    :cond_c
    const-string v1, "armeabi-v7a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "armv71"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_7

    :cond_d
    invoke-static {v6, v0, p0, p1}, Lr4/ky2;->c([BLjava/lang/String;Landroid/content/Context;Lr4/hx2;)V

    goto :goto_6

    :cond_e
    :goto_7
    const/4 v0, 0x3

    goto :goto_9

    :cond_f
    :goto_8
    const/4 v0, 0x5

    :cond_10
    :goto_9
    if-eq v0, v9, :cond_15

    if-eq v0, v8, :cond_14

    if-eq v0, v7, :cond_13

    if-eq v0, v4, :cond_12

    if-eq v0, v3, :cond_11

    const-string p0, "null"

    goto :goto_a

    :cond_11
    const-string p0, "X86_64"

    goto :goto_a

    :cond_12
    const-string p0, "ARM64"

    goto :goto_a

    :cond_13
    const-string p0, "X86"

    goto :goto_a

    :cond_14
    const-string p0, "ARM7"

    goto :goto_a

    :cond_15
    const-string p0, "UNSUPPORTED"

    :goto_a
    const/16 v1, 0x139a

    invoke-virtual {p1, v1, p0}, Lr4/hx2;->e(ILjava/lang/String;)Lj5/i;

    return v0
.end method

.method public static final c([BLjava/lang/String;Landroid/content/Context;Lr4/hx2;)V
    .locals 3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "os.arch:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lr4/k13;->G:Lr4/k13;

    invoke-virtual {v0}, Lr4/k13;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    const-class v1, Landroid/os/Build;

    const-string v2, "SUPPORTED_ABIS"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "supported_abis:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    const-string v1, "CPU_ABI:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";CPU_ABI2:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1

    const-string v1, "ELF:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p1, :cond_2

    const-string p0, "dbg:"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 p0, 0xfa7

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p0, p1}, Lr4/hx2;->e(ILjava/lang/String;)Lj5/i;

    return-void
.end method

.method public static final d(Landroid/content/Context;Lr4/hx2;)Ljava/lang/String;
    .locals 5

    new-instance p0, Ljava/util/HashSet;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "i686"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v3, "armv71"

    aput-object v3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v0, Lr4/k13;->G:Lr4/k13;

    invoke-virtual {v0}, Lr4/k13;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    const/16 p0, 0x7e8

    :try_start_0
    const-class v3, Landroid/os/Build;

    const-string v4, "SUPPORTED_ABIS"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    if-eqz v3, :cond_2

    array-length v4, v3

    if-lez v4, :cond_2

    aget-object p0, v3, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v2

    invoke-virtual {p1, p0, v0, v1, v2}, Lr4/hx2;->c(IJLjava/lang/Exception;)Lj5/i;

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {p1, p0, v0, v1, v2}, Lr4/hx2;->c(IJLjava/lang/Exception;)Lj5/i;

    :cond_2
    :goto_1
    sget-object p0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    sget-object p0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    return-object p0
.end method

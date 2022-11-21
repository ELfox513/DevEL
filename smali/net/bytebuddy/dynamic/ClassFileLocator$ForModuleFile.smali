.class public Lnet/bytebuddy/dynamic/ClassFileLocator$ForModuleFile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/ClassFileLocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/ClassFileLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForModuleFile"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final BOOT_LOCATIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final JMOD_FILE_EXTENSION:Ljava/lang/String; = ".jmod"


# instance fields
.field private final zipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "jmods"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "../jmods"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "modules"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModuleFile;->BOOT_LOCATIONS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModuleFile;->zipFile:Ljava/util/zip/ZipFile;

    return-void
.end method

.method public static of(Ljava/io/File;)Lnet/bytebuddy/dynamic/ClassFileLocator;
    .locals 2

    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModuleFile;

    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModuleFile;-><init>(Ljava/util/zip/ZipFile;)V

    return-object v0
.end method

.method public static ofBootPath()Lnet/bytebuddy/dynamic/ClassFileLocator;
    .locals 4

    const-string v0, "java.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5c

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModuleFile;->BOOT_LOCATIONS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    invoke-static {v3}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModuleFile;->ofBootPath(Ljava/io/File;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Boot modules do not exist in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for any of "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModuleFile;->BOOT_LOCATIONS:Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public static ofBootPath(Ljava/io/File;)Lnet/bytebuddy/dynamic/ClassFileLocator;
    .locals 5

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;->INSTANCE:Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModuleFile;->of(Ljava/io/File;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lnet/bytebuddy/dynamic/ClassFileLocator$ForFolder;

    invoke-direct {v4, v3}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForFolder;-><init>(Ljava/io/File;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;

    invoke-direct {p0, v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static ofModulePath()Lnet/bytebuddy/dynamic/ClassFileLocator;
    .locals 1

    const-string v0, "jdk.module.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;->INSTANCE:Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModuleFile;->ofModulePath(Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static ofModulePath(Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator;
    .locals 1

    const-string v0, "user.dir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModuleFile;->ofModulePath(Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object p0

    return-object p0
.end method

.method public static ofModulePath(Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "path.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v4, p0, v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v4

    const-string v6, ".jmod"

    if-eqz v4, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_5

    array-length v5, v4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_5

    aget-object v8, v4, v7

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v9, Lnet/bytebuddy/dynamic/ClassFileLocator$ForFolder;

    invoke-direct {v9, v8}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForFolder;-><init>(Ljava/io/File;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_0
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {v8}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModuleFile;->of(Ljava/io/File;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v8

    goto :goto_2

    :cond_1
    invoke-static {v8}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForJarFile;->of(Ljava/io/File;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v8

    :goto_2
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v5}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModuleFile;->of(Ljava/io/File;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v4

    goto :goto_4

    :cond_4
    invoke-static {v5}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForJarFile;->of(Ljava/io/File;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v4

    :goto_4
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    new-instance p0, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;

    invoke-direct {p0, v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;-><init>(Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModuleFile;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModuleFile;->zipFile:Ljava/util/zip/ZipFile;

    check-cast p1, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModuleFile;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModuleFile;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModuleFile;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public locate(Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModuleFile;->zipFile:Ljava/util/zip/ZipFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "classes/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Illegal;

    invoke-direct {v0, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Illegal;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    iget-object p1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModuleFile;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {p1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1

    :try_start_0
    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Explicit;

    sget-object v1, Lnet/bytebuddy/utility/StreamDrainer;->DEFAULT:Lnet/bytebuddy/utility/StreamDrainer;

    invoke-virtual {v1, p1}, Lnet/bytebuddy/utility/StreamDrainer;->drain(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Explicit;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

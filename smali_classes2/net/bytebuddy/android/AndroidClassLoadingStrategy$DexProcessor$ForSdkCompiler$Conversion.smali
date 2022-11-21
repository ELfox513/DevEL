.class public Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Conversion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$Conversion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Conversion"
.end annotation


# static fields
.field private static final NON_STRICT:Z = false


# instance fields
.field public final synthetic a:Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler;

.field private final dexFile:Lcom/android/dx/dex/file/DexFile;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler;Lcom/android/dx/dex/file/DexFile;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Conversion;->a:Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Conversion;->dexFile:Lcom/android/dx/dex/file/DexFile;

    return-void
.end method


# virtual methods
.method public drainTo(Ljava/io/OutputStream;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Conversion;->dexFile:Lcom/android/dx/dex/file/DexFile;

    invoke-static {}, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler;->d()Ljava/io/Writer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/dx/dex/file/DexFile;->writeTo(Ljava/io/OutputStream;Ljava/io/Writer;Z)V

    return-void
.end method

.method public register(Ljava/lang/String;[B)V
    .locals 6

    new-instance v1, Lp1/f;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".class"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {v1, p2, p1, v0}, Lp1/f;-><init>([BLjava/lang/String;Z)V

    new-instance p1, Lp1/j;

    invoke-direct {p1}, Lp1/j;-><init>()V

    invoke-virtual {v1, p1}, Lp1/f;->x(Lp1/b;)V

    iget-object p1, p0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Conversion;->dexFile:Lcom/android/dx/dex/file/DexFile;

    invoke-static {}, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler;->c()Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Dispatcher;

    move-result-object v0

    iget-object v2, p0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Conversion;->a:Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler;

    invoke-static {v2}, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler;->a(Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler;)Lcom/android/dx/dex/cf/CfOptions;

    move-result-object v3

    iget-object v2, p0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Conversion;->a:Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler;

    invoke-static {v2}, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler;->b(Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler;)Lcom/android/dx/dex/DexOptions;

    move-result-object v4

    new-instance v5, Lcom/android/dx/dex/file/DexFile;

    iget-object v2, p0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Conversion;->a:Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler;

    invoke-static {v2}, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler;->b(Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler;)Lcom/android/dx/dex/DexOptions;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/android/dx/dex/file/DexFile;-><init>(Lcom/android/dx/dex/DexOptions;)V

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Dispatcher;->translate(Lp1/f;[BLcom/android/dx/dex/cf/CfOptions;Lcom/android/dx/dex/DexOptions;Lcom/android/dx/dex/file/DexFile;)Lcom/android/dx/dex/file/ClassDefItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/dx/dex/file/DexFile;->add(Lcom/android/dx/dex/file/ClassDefItem;)V

    return-void
.end method

.class final enum Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target$1;
.super Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/ClassLoader;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;-><init>(Ljava/lang/String;ILjava/lang/ClassLoader;Lnet/bytebuddy/dynamic/loading/ClassInjector$1;)V

    return-void
.end method


# virtual methods
.method public inject(Ljava/lang/instrument/Instrumentation;Ljava/util/jar/JarFile;)V
    .locals 1

    invoke-static {}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->a()Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher;->appendToBootstrapClassLoaderSearch(Ljava/lang/instrument/Instrumentation;Ljava/util/jar/JarFile;)V

    return-void
.end method

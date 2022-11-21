.class public interface abstract Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher$Jvm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/jna/Library;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Jvm"
.end annotation


# virtual methods
.method public abstract JVM_DefineClass(Lcom/sun/jna/JNIEnv;Ljava/lang/String;Ljava/lang/ClassLoader;[BILjava/security/ProtectionDomain;)Ljava/lang/Class;
    .param p3    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p6    # Ljava/security/ProtectionDomain;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/jna/JNIEnv;",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "[BI",
            "Ljava/security/ProtectionDomain;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

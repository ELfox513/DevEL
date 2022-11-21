.class public interface abstract Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Dispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForUnresolvedMethod;,
        Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForNonStaticMethod;,
        Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForStaticMethod;,
        Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForConstructor;,
        Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue;,
        Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForContainerCreation;,
        Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForInstanceCheck;
    }
.end annotation


# virtual methods
.method public abstract apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Ljava/lang/reflect/Method;)I
.end method

.method public abstract invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end method

.class public interface abstract Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Dispatcher"
.end annotation

.annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    value = "java.lang.instrument.Instrumentation"
.end annotation


# virtual methods
.method public abstract isModifiableClass(Ljava/lang/instrument/Instrumentation;Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
        value = "isModifiableClass"
    .end annotation
.end method

.method public abstract isRetransformClassesSupported(Ljava/lang/instrument/Instrumentation;)Z
    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Defaults;
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
        value = "isRetransformClassesSupported"
    .end annotation
.end method

.method public abstract retransformClasses(Ljava/lang/instrument/Instrumentation;[Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
        value = "retransformClasses"
    .end annotation
.end method

.class public interface abstract Lnet/bytebuddy/build/Plugin$Engine$Target$Sink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Engine$Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Sink"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/build/Plugin$Engine$Target$Sink$ForJarOutputStream;
    }
.end annotation


# virtual methods
.method public abstract retain(Lnet/bytebuddy/build/Plugin$Engine$Source$Element;)V
.end method

.method public abstract store(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "[B>;)V"
        }
    .end annotation
.end method

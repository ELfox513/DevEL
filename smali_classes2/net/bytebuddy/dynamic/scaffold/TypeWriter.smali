.class public interface abstract Lnet/bytebuddy/dynamic/scaffold/TypeWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;,
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool;,
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;,
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DUMP_PROPERTY:Ljava/lang/String; = "net.bytebuddy.dump"


# virtual methods
.method public abstract make(Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;)Lnet/bytebuddy/dynamic/DynamicType$Unloaded;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Unloaded<",
            "TT;>;"
        }
    .end annotation
.end method

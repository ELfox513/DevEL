.class public interface abstract Lnet/bytebuddy/build/Plugin$Engine$Source$Origin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Engine$Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Origin"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering;,
        Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$ForJarFile;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lnet/bytebuddy/build/Plugin$Engine$Source$Element;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field public static final NO_MANIFEST:Ljava/util/jar/Manifest;
    .annotation runtime Lnet/bytebuddy/utility/nullability/AlwaysNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract getClassFileLocator()Lnet/bytebuddy/dynamic/ClassFileLocator;
.end method

.method public abstract getManifest()Ljava/util/jar/Manifest;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end method

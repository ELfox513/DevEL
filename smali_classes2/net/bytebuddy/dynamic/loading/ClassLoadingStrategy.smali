.class public interface abstract Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$ForJnaInjection;,
        Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$ForUnsafeInjection;,
        Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$ForBootstrapInjection;,
        Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$UsingLookup;,
        Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;,
        Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/ClassLoader;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final BOOTSTRAP_LOADER:Ljava/lang/ClassLoader;
    .annotation runtime Lnet/bytebuddy/utility/nullability/AlwaysNull;
    .end annotation
.end field

.field public static final NO_PROTECTION_DOMAIN:Ljava/security/ProtectionDomain;
    .annotation runtime Lnet/bytebuddy/utility/nullability/AlwaysNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract load(Ljava/lang/ClassLoader;Ljava/util/Map;)Ljava/util/Map;
    .param p1    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "[B>;)",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end method

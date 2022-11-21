.class public interface abstract Lnet/bytebuddy/dynamic/loading/ClassInjector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna;,
        Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;,
        Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;,
        Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;,
        Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;,
        Lnet/bytebuddy/dynamic/loading/ClassInjector$AbstractBase;
    }
.end annotation


# static fields
.field public static final ALLOW_EXISTING_TYPES:Z = false

.field public static final SUPPRESS_ACCESS_CHECKS:Ljava/security/Permission;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/reflect/ReflectPermission;

    const-string v1, "suppressAccessChecks"

    invoke-direct {v0, v1}, Ljava/lang/reflect/ReflectPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector;->SUPPRESS_ACCESS_CHECKS:Ljava/security/Permission;

    return-void
.end method


# virtual methods
.method public abstract inject(Ljava/util/Map;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "[B>;)",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end method

.method public abstract injectRaw(Ljava/util/Map;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "[B>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end method

.method public abstract isAlive()Z
.end method

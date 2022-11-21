.class public final enum Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Disabled;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Disabled"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Disabled;",
        ">;",
        "Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Disabled;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Disabled;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Disabled;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Disabled;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Disabled;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Disabled;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Disabled;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Disabled;->$VALUES:[Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Disabled;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Disabled;
    .locals 1

    const-class v0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Disabled;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Disabled;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Disabled;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Disabled;->$VALUES:[Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Disabled;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Disabled;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Disabled;

    return-object v0
.end method


# virtual methods
.method public make(Ljava/lang/instrument/Instrumentation;)Lnet/bytebuddy/dynamic/loading/ClassInjector;
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Bootstrap injection is not enabled"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

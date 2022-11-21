.class public final enum Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$Illegal;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Illegal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$Illegal;",
        ">;",
        "Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$Illegal;

.field public static final enum INSTANCE:Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$Illegal;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$Illegal;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$Illegal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$Illegal;->INSTANCE:Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$Illegal;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$Illegal;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$Illegal;->$VALUES:[Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$Illegal;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$Illegal;
    .locals 1

    const-class v0, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$Illegal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$Illegal;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$Illegal;
    .locals 1

    sget-object v0, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$Illegal;->$VALUES:[Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$Illegal;

    invoke-virtual {v0}, [Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$Illegal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$Illegal;

    return-object v0
.end method


# virtual methods
.method public bind(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$AbstractBase$ComponentTypeReference;
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected lookup of component type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

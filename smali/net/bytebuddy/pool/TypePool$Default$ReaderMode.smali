.class public final enum Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReaderMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

.field public static final enum EXTENDED:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

.field public static final enum FAST:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;


# instance fields
.field private final flags:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    const-string v1, "EXTENDED"

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;->EXTENDED:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    new-instance v1, Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    const-string v3, "FAST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;->FAST:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;->$VALUES:[Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;->flags:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;
    .locals 1

    const-class v0, Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;
    .locals 1

    sget-object v0, Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;->$VALUES:[Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    invoke-virtual {v0}, [Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    return-object v0
.end method


# virtual methods
.method public getFlags()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;->flags:I

    return v0
.end method

.method public isExtended()Z
    .locals 1

    sget-object v0, Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;->EXTENDED:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.class public final enum Lnet/bytebuddy/description/modifier/SyntheticState;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;
.implements Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;
.implements Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;
.implements Lnet/bytebuddy/description/modifier/ModifierContributor$ForParameter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/description/modifier/SyntheticState;",
        ">;",
        "Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;",
        "Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;",
        "Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;",
        "Lnet/bytebuddy/description/modifier/ModifierContributor$ForParameter;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/description/modifier/SyntheticState;

.field public static final enum PLAIN:Lnet/bytebuddy/description/modifier/SyntheticState;

.field public static final enum SYNTHETIC:Lnet/bytebuddy/description/modifier/SyntheticState;


# instance fields
.field private final mask:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lnet/bytebuddy/description/modifier/SyntheticState;

    const-string v1, "PLAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnet/bytebuddy/description/modifier/SyntheticState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/description/modifier/SyntheticState;->PLAIN:Lnet/bytebuddy/description/modifier/SyntheticState;

    new-instance v1, Lnet/bytebuddy/description/modifier/SyntheticState;

    const-string v3, "SYNTHETIC"

    const/4 v4, 0x1

    const/16 v5, 0x1000

    invoke-direct {v1, v3, v4, v5}, Lnet/bytebuddy/description/modifier/SyntheticState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/bytebuddy/description/modifier/SyntheticState;->SYNTHETIC:Lnet/bytebuddy/description/modifier/SyntheticState;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/description/modifier/SyntheticState;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lnet/bytebuddy/description/modifier/SyntheticState;->$VALUES:[Lnet/bytebuddy/description/modifier/SyntheticState;

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

    iput p3, p0, Lnet/bytebuddy/description/modifier/SyntheticState;->mask:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/description/modifier/SyntheticState;
    .locals 1

    const-class v0, Lnet/bytebuddy/description/modifier/SyntheticState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/description/modifier/SyntheticState;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/description/modifier/SyntheticState;
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/modifier/SyntheticState;->$VALUES:[Lnet/bytebuddy/description/modifier/SyntheticState;

    invoke-virtual {v0}, [Lnet/bytebuddy/description/modifier/SyntheticState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/description/modifier/SyntheticState;

    return-object v0
.end method


# virtual methods
.method public getMask()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/description/modifier/SyntheticState;->mask:I

    return v0
.end method

.method public getRange()I
    .locals 1

    const/16 v0, 0x1000

    return v0
.end method

.method public isDefault()Z
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/modifier/SyntheticState;->PLAIN:Lnet/bytebuddy/description/modifier/SyntheticState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSynthetic()Z
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/modifier/SyntheticState;->SYNTHETIC:Lnet/bytebuddy/description/modifier/SyntheticState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

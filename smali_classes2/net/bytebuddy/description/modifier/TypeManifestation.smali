.class public final enum Lnet/bytebuddy/description/modifier/TypeManifestation;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/description/modifier/TypeManifestation;",
        ">;",
        "Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/description/modifier/TypeManifestation;

.field public static final enum ABSTRACT:Lnet/bytebuddy/description/modifier/TypeManifestation;

.field public static final enum ANNOTATION:Lnet/bytebuddy/description/modifier/TypeManifestation;

.field public static final enum FINAL:Lnet/bytebuddy/description/modifier/TypeManifestation;

.field public static final enum INTERFACE:Lnet/bytebuddy/description/modifier/TypeManifestation;

.field public static final enum PLAIN:Lnet/bytebuddy/description/modifier/TypeManifestation;


# instance fields
.field private final mask:I


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lnet/bytebuddy/description/modifier/TypeManifestation;

    const-string v1, "PLAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnet/bytebuddy/description/modifier/TypeManifestation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/description/modifier/TypeManifestation;->PLAIN:Lnet/bytebuddy/description/modifier/TypeManifestation;

    new-instance v1, Lnet/bytebuddy/description/modifier/TypeManifestation;

    const-string v3, "FINAL"

    const/4 v4, 0x1

    const/16 v5, 0x10

    invoke-direct {v1, v3, v4, v5}, Lnet/bytebuddy/description/modifier/TypeManifestation;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/bytebuddy/description/modifier/TypeManifestation;->FINAL:Lnet/bytebuddy/description/modifier/TypeManifestation;

    new-instance v3, Lnet/bytebuddy/description/modifier/TypeManifestation;

    const-string v5, "ABSTRACT"

    const/4 v6, 0x2

    const/16 v7, 0x400

    invoke-direct {v3, v5, v6, v7}, Lnet/bytebuddy/description/modifier/TypeManifestation;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lnet/bytebuddy/description/modifier/TypeManifestation;->ABSTRACT:Lnet/bytebuddy/description/modifier/TypeManifestation;

    new-instance v5, Lnet/bytebuddy/description/modifier/TypeManifestation;

    const-string v7, "INTERFACE"

    const/4 v8, 0x3

    const/16 v9, 0x600

    invoke-direct {v5, v7, v8, v9}, Lnet/bytebuddy/description/modifier/TypeManifestation;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lnet/bytebuddy/description/modifier/TypeManifestation;->INTERFACE:Lnet/bytebuddy/description/modifier/TypeManifestation;

    new-instance v7, Lnet/bytebuddy/description/modifier/TypeManifestation;

    const-string v9, "ANNOTATION"

    const/4 v10, 0x4

    const/16 v11, 0x2600

    invoke-direct {v7, v9, v10, v11}, Lnet/bytebuddy/description/modifier/TypeManifestation;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lnet/bytebuddy/description/modifier/TypeManifestation;->ANNOTATION:Lnet/bytebuddy/description/modifier/TypeManifestation;

    const/4 v9, 0x5

    new-array v9, v9, [Lnet/bytebuddy/description/modifier/TypeManifestation;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lnet/bytebuddy/description/modifier/TypeManifestation;->$VALUES:[Lnet/bytebuddy/description/modifier/TypeManifestation;

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

    iput p3, p0, Lnet/bytebuddy/description/modifier/TypeManifestation;->mask:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/description/modifier/TypeManifestation;
    .locals 1

    const-class v0, Lnet/bytebuddy/description/modifier/TypeManifestation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/description/modifier/TypeManifestation;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/description/modifier/TypeManifestation;
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/modifier/TypeManifestation;->$VALUES:[Lnet/bytebuddy/description/modifier/TypeManifestation;

    invoke-virtual {v0}, [Lnet/bytebuddy/description/modifier/TypeManifestation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/description/modifier/TypeManifestation;

    return-object v0
.end method


# virtual methods
.method public getMask()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/description/modifier/TypeManifestation;->mask:I

    return v0
.end method

.method public getRange()I
    .locals 1

    const/16 v0, 0x2610

    return v0
.end method

.method public isAbstract()Z
    .locals 1

    iget v0, p0, Lnet/bytebuddy/description/modifier/TypeManifestation;->mask:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/description/modifier/TypeManifestation;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAnnotation()Z
    .locals 1

    iget v0, p0, Lnet/bytebuddy/description/modifier/TypeManifestation;->mask:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDefault()Z
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/modifier/TypeManifestation;->PLAIN:Lnet/bytebuddy/description/modifier/TypeManifestation;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFinal()Z
    .locals 1

    iget v0, p0, Lnet/bytebuddy/description/modifier/TypeManifestation;->mask:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInterface()Z
    .locals 1

    iget v0, p0, Lnet/bytebuddy/description/modifier/TypeManifestation;->mask:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

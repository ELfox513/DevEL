.class public final enum Lnet/bytebuddy/description/modifier/Visibility;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;
.implements Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;
.implements Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/description/modifier/Visibility;",
        ">;",
        "Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;",
        "Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;",
        "Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/description/modifier/Visibility;

.field public static final enum PACKAGE_PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

.field public static final enum PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

.field public static final enum PROTECTED:Lnet/bytebuddy/description/modifier/Visibility;

.field public static final enum PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;


# instance fields
.field private final mask:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lnet/bytebuddy/description/modifier/Visibility;

    const-string v1, "PUBLIC"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/description/modifier/Visibility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    new-instance v1, Lnet/bytebuddy/description/modifier/Visibility;

    const-string v4, "PACKAGE_PRIVATE"

    invoke-direct {v1, v4, v3, v2}, Lnet/bytebuddy/description/modifier/Visibility;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/bytebuddy/description/modifier/Visibility;->PACKAGE_PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

    new-instance v4, Lnet/bytebuddy/description/modifier/Visibility;

    const-string v5, "PROTECTED"

    const/4 v6, 0x2

    const/4 v7, 0x4

    invoke-direct {v4, v5, v6, v7}, Lnet/bytebuddy/description/modifier/Visibility;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/bytebuddy/description/modifier/Visibility;->PROTECTED:Lnet/bytebuddy/description/modifier/Visibility;

    new-instance v5, Lnet/bytebuddy/description/modifier/Visibility;

    const-string v8, "PRIVATE"

    const/4 v9, 0x3

    invoke-direct {v5, v8, v9, v6}, Lnet/bytebuddy/description/modifier/Visibility;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lnet/bytebuddy/description/modifier/Visibility;->PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

    new-array v7, v7, [Lnet/bytebuddy/description/modifier/Visibility;

    aput-object v0, v7, v2

    aput-object v1, v7, v3

    aput-object v4, v7, v6

    aput-object v5, v7, v9

    sput-object v7, Lnet/bytebuddy/description/modifier/Visibility;->$VALUES:[Lnet/bytebuddy/description/modifier/Visibility;

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

    iput p3, p0, Lnet/bytebuddy/description/modifier/Visibility;->mask:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/description/modifier/Visibility;
    .locals 1

    const-class v0, Lnet/bytebuddy/description/modifier/Visibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/description/modifier/Visibility;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/description/modifier/Visibility;
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/modifier/Visibility;->$VALUES:[Lnet/bytebuddy/description/modifier/Visibility;

    invoke-virtual {v0}, [Lnet/bytebuddy/description/modifier/Visibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/description/modifier/Visibility;

    return-object v0
.end method


# virtual methods
.method public expandTo(Lnet/bytebuddy/description/modifier/Visibility;)Lnet/bytebuddy/description/modifier/Visibility;
    .locals 3

    sget-object v0, Lnet/bytebuddy/description/modifier/Visibility$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected visibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p1, Lnet/bytebuddy/description/modifier/Visibility;->PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

    if-ne p0, p1, :cond_2

    sget-object p1, Lnet/bytebuddy/description/modifier/Visibility;->PACKAGE_PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

    goto :goto_0

    :cond_2
    move-object p1, p0

    :goto_0
    return-object p1

    :cond_3
    sget-object v0, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    if-ne p0, v0, :cond_4

    move-object p1, v0

    :cond_4
    return-object p1

    :cond_5
    sget-object p1, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    return-object p1
.end method

.method public getMask()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/description/modifier/Visibility;->mask:I

    return v0
.end method

.method public getRange()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public isDefault()Z
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/modifier/Visibility;->PACKAGE_PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPackagePrivate()Z
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/description/modifier/Visibility;->isPublic()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/description/modifier/Visibility;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/description/modifier/Visibility;->isProtected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrivate()Z
    .locals 1

    iget v0, p0, Lnet/bytebuddy/description/modifier/Visibility;->mask:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isProtected()Z
    .locals 1

    iget v0, p0, Lnet/bytebuddy/description/modifier/Visibility;->mask:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPublic()Z
    .locals 2

    iget v0, p0, Lnet/bytebuddy/description/modifier/Visibility;->mask:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

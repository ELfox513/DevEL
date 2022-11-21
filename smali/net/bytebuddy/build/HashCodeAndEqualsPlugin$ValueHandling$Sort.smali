.class public final enum Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Sort"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;

.field public static final enum IGNORE:Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;

.field public static final enum REVERSE_NULLABILITY:Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;

    const-string v1, "IGNORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;->IGNORE:Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;

    new-instance v1, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;

    const-string v3, "REVERSE_NULLABILITY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;->REVERSE_NULLABILITY:Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;->$VALUES:[Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;
    .locals 1

    const-class v0, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;
    .locals 1

    sget-object v0, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;->$VALUES:[Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;

    invoke-virtual {v0}, [Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;

    return-object v0
.end method

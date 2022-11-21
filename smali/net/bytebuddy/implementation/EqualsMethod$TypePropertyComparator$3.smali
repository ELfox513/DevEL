.class final enum Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator$3;
.super Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/EqualsMethod$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    check-cast p2, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-super {p0, p1, p2}, Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;->compare(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)I

    move-result p1

    return p1
.end method

.method public resolve(Lnet/bytebuddy/description/type/TypeDefinition;)Z
    .locals 1

    const-class v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result p1

    return p1
.end method

.class public final enum Lnet/bytebuddy/utility/FieldComparator;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/utility/FieldComparator;",
        ">;",
        "Ljava/util/Comparator<",
        "Ljava/lang/reflect/Field;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/utility/FieldComparator;

.field public static final enum INSTANCE:Lnet/bytebuddy/utility/FieldComparator;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/utility/FieldComparator;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/utility/FieldComparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/utility/FieldComparator;->INSTANCE:Lnet/bytebuddy/utility/FieldComparator;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/utility/FieldComparator;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/utility/FieldComparator;->$VALUES:[Lnet/bytebuddy/utility/FieldComparator;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/utility/FieldComparator;
    .locals 1

    const-class v0, Lnet/bytebuddy/utility/FieldComparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/utility/FieldComparator;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/utility/FieldComparator;
    .locals 1

    sget-object v0, Lnet/bytebuddy/utility/FieldComparator;->$VALUES:[Lnet/bytebuddy/utility/FieldComparator;

    invoke-virtual {v0}, [Lnet/bytebuddy/utility/FieldComparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/utility/FieldComparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/reflect/Field;

    check-cast p2, Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/utility/FieldComparator;->compare(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)I
    .locals 2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    return v0
.end method

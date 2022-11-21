.class public abstract enum La2/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La2/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La2/a$b;

.field public static final enum b:La2/a$b;

.field public static final enum d:La2/a$b;

.field public static final synthetic k:[La2/a$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, La2/a$b$a;

    const-string v1, "EVEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La2/a$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La2/a$b;->a:La2/a$b;

    new-instance v1, La2/a$b$b;

    const-string v3, "ODD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, La2/a$b$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, La2/a$b;->b:La2/a$b;

    new-instance v3, La2/a$b$c;

    const-string v5, "UNSPECIFIED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, La2/a$b$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, La2/a$b;->d:La2/a$b;

    const/4 v5, 0x3

    new-array v5, v5, [La2/a$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, La2/a$b;->k:[La2/a$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILa2/a$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, La2/a$b;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La2/a$b;
    .locals 1

    const-class v0, La2/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La2/a$b;

    return-object p0
.end method

.method public static values()[La2/a$b;
    .locals 1

    sget-object v0, La2/a$b;->k:[La2/a$b;

    invoke-virtual {v0}, [La2/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La2/a$b;

    return-object v0
.end method


# virtual methods
.method public abstract c(Ljava/util/BitSet;I)I
.end method

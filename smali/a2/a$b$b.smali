.class public final enum La2/a$b$b;
.super La2/a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, La2/a$b;-><init>(Ljava/lang/String;ILa2/a$a;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/util/BitSet;I)I
    .locals 1

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result p2

    :goto_0
    invoke-static {p2}, La2/a;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result p2

    goto :goto_0

    :cond_0
    return p2
.end method

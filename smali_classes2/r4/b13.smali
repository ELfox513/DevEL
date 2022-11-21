.class public final Lr4/b13;
.super Lr4/h13;
.source "SourceFile"


# instance fields
.field public final synthetic r:Lr4/d13;


# direct methods
.method public constructor <init>(Lr4/d13;Lr4/j13;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lr4/b13;->r:Lr4/d13;

    invoke-direct {p0, p2, p3}, Lr4/h13;-><init>(Lr4/j13;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final c(I)I
    .locals 4

    iget-object v0, p0, Lr4/b13;->r:Lr4/d13;

    iget-object v0, v0, Lr4/d13;->a:Lr4/m03;

    iget-object v1, p0, Lr4/h13;->d:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-string v3, "index"

    invoke-static {p1, v2, v3}, Lr4/z03;->f(IILjava/lang/String;)I

    :goto_0
    if-ge p1, v2, :cond_0

    invoke-interface {v1, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Lr4/m03;->a(C)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :cond_1
    return p1
.end method

.method public final e(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

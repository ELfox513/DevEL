.class public final Lr4/e13;
.super Lr4/h13;
.source "SourceFile"


# instance fields
.field public final synthetic r:Lr4/f13;


# direct methods
.method public constructor <init>(Lr4/f13;Lr4/j13;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lr4/e13;->r:Lr4/f13;

    invoke-direct {p0, p2, p3}, Lr4/h13;-><init>(Lr4/j13;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final c(I)I
    .locals 1

    add-int/lit16 p1, p1, 0xfa0

    iget-object v0, p0, Lr4/h13;->d:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final e(I)I
    .locals 0

    return p1
.end method

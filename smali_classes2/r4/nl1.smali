.class public final Lr4/nl1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/p03;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/p03<",
        "Lr4/l84;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:D

.field public final synthetic b:Z

.field public final synthetic c:Lr4/pl1;


# direct methods
.method public constructor <init>(Lr4/pl1;DZ)V
    .locals 0

    iput-object p1, p0, Lr4/nl1;->c:Lr4/pl1;

    iput-wide p2, p0, Lr4/nl1;->a:D

    iput-boolean p4, p0, Lr4/nl1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lr4/l84;

    iget-object v0, p0, Lr4/nl1;->c:Lr4/pl1;

    iget-object p1, p1, Lr4/l84;->b:[B

    iget-wide v1, p0, Lr4/nl1;->a:D

    iget-boolean v3, p0, Lr4/nl1;->b:Z

    invoke-static {v0, p1, v1, v2, v3}, Lr4/pl1;->b(Lr4/pl1;[BDZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

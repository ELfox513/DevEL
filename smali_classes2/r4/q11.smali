.class public final Lr4/q11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/o11;


# direct methods
.method public constructor <init>(Lr4/o11;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/q11;->a:Lr4/o11;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/q11;->a:Lr4/o11;

    invoke-virtual {v0}, Lr4/o11;->b()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lr4/q11;->a:Lr4/o11;

    invoke-virtual {v0}, Lr4/o11;->b()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.class public final Lr4/f11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Landroid/view/ViewGroup;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/e11;


# direct methods
.method public constructor <init>(Lr4/e11;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/f11;->a:Lr4/e11;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/f11;->a:Lr4/e11;

    invoke-virtual {v0}, Lr4/e11;->a()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public final b()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lr4/f11;->a:Lr4/e11;

    invoke-virtual {v0}, Lr4/e11;->a()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

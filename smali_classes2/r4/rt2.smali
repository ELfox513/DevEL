.class public final Lr4/rt2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/ea0;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/qt2;

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/im0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/qt2;Lr4/is3;Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/qt2;",
            "Lr4/is3<",
            "Landroid/content/Context;",
            ">;",
            "Lr4/is3<",
            "Lr4/im0;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/rt2;->a:Lr4/qt2;

    iput-object p2, p0, Lr4/rt2;->b:Lr4/is3;

    iput-object p3, p0, Lr4/rt2;->c:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lr4/rt2;->b:Lr4/is3;

    check-cast v0, Lr4/gu0;

    invoke-virtual {v0}, Lr4/gu0;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lr4/rt2;->c:Lr4/is3;

    check-cast v1, Lr4/pu0;

    invoke-virtual {v1}, Lr4/pu0;->b()Lr4/im0;

    move-result-object v1

    new-instance v2, Lr4/u90;

    invoke-direct {v2}, Lr4/u90;-><init>()V

    invoke-virtual {v2, v0, v1}, Lr4/u90;->b(Landroid/content/Context;Lr4/im0;)Lr4/ea0;

    move-result-object v0

    invoke-static {v0}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

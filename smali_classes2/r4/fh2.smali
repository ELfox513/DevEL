.class public final Lr4/fh2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/dh2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/qg0;",
            ">;"
        }
    .end annotation
.end field

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/i83;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/is3<",
            "Lr4/qg0;",
            ">;",
            "Lr4/is3<",
            "Landroid/content/Context;",
            ">;",
            "Lr4/is3<",
            "Ljava/lang/String;",
            ">;",
            "Lr4/is3<",
            "Lr4/i83;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/fh2;->a:Lr4/is3;

    iput-object p2, p0, Lr4/fh2;->b:Lr4/is3;

    iput-object p3, p0, Lr4/fh2;->c:Lr4/is3;

    iput-object p4, p0, Lr4/fh2;->d:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lr4/fh2;->b:Lr4/is3;

    check-cast v0, Lr4/gu0;

    invoke-virtual {v0}, Lr4/gu0;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lr4/fh2;->c:Lr4/is3;

    check-cast v1, Lr4/gi2;

    invoke-virtual {v1}, Lr4/gi2;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lr4/qm0;->a:Lr4/i83;

    invoke-static {v2}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lr4/dh2;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v1, v2}, Lr4/dh2;-><init>(Lr4/qg0;Landroid/content/Context;Ljava/lang/String;Lr4/i83;)V

    return-object v3
.end method

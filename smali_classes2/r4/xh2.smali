.class public final Lr4/xh2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/vh2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/bl0;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/i83;",
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


# direct methods
.method public constructor <init>(Lr4/is3;Lr4/is3;Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/is3<",
            "Lr4/bl0;",
            ">;",
            "Lr4/is3<",
            "Lr4/i83;",
            ">;",
            "Lr4/is3<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/xh2;->a:Lr4/is3;

    iput-object p2, p0, Lr4/xh2;->b:Lr4/is3;

    iput-object p3, p0, Lr4/xh2;->c:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 5

    new-instance v0, Lr4/bl0;

    invoke-direct {v0}, Lr4/bl0;-><init>()V

    sget-object v1, Lr4/qm0;->a:Lr4/i83;

    invoke-static {v1}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lr4/xh2;->c:Lr4/is3;

    check-cast v2, Lr4/gi2;

    invoke-virtual {v2}, Lr4/gi2;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lr4/vh2;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v2, v4}, Lr4/vh2;-><init>(Lr4/bl0;Lr4/i83;Ljava/lang/String;[B)V

    return-object v3
.end method

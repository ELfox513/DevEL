.class public final Lr4/lu0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/s12<",
        "Lr4/zp2;",
        "Lr4/o32;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final a:Lr4/eu0;

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/gq1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/eu0;Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/eu0;",
            "Lr4/is3<",
            "Lr4/gq1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/lu0;->a:Lr4/eu0;

    iput-object p2, p0, Lr4/lu0;->b:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lr4/lu0;->b:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/gq1;

    new-instance v1, Lr4/x52;

    invoke-direct {v1, v0}, Lr4/x52;-><init>(Lr4/gq1;)V

    return-object v1
.end method

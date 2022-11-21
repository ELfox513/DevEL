.class public final Lr4/x11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/ve1<",
        "Lr4/y81;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final a:Lr4/o11;

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/x21;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/o11;Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/o11;",
            "Lr4/is3<",
            "Lr4/x21;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/x11;->a:Lr4/o11;

    iput-object p2, p0, Lr4/x11;->b:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/x11;->b:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/x21;

    invoke-static {v0}, Lr4/o11;->h(Lr4/x21;)Lr4/ve1;

    move-result-object v0

    return-object v0
.end method

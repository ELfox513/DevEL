.class public final Lr4/b70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/e73;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/e73<",
        "Lr4/z60;",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr4/s60;


# direct methods
.method public constructor <init>(Lr4/f70;Lr4/s60;)V
    .locals 0

    iput-object p2, p0, Lr4/b70;->a:Lr4/s60;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lr4/h83;
    .locals 3

    check-cast p1, Lr4/z60;

    new-instance v0, Lr4/vm0;

    invoke-direct {v0}, Lr4/vm0;-><init>()V

    iget-object v1, p0, Lr4/b70;->a:Lr4/s60;

    new-instance v2, Lr4/a70;

    invoke-direct {v2, p0, v0}, Lr4/a70;-><init>(Lr4/b70;Lr4/vm0;)V

    invoke-virtual {p1, v1, v2}, Lr4/z60;->b2(Lr4/s60;Lr4/y60;)V

    return-object v0
.end method

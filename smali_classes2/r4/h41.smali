.class public final synthetic Lr4/h41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/e73;


# instance fields
.field public final a:Lr4/vx1;


# direct methods
.method public constructor <init>(Lr4/vx1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/h41;->a:Lr4/vx1;

    return-void
.end method

.method public static c(Lr4/vx1;)Lr4/e73;
    .locals 1

    new-instance v0, Lr4/h41;

    invoke-direct {v0, p0}, Lr4/h41;-><init>(Lr4/vx1;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lr4/h83;
    .locals 1

    iget-object v0, p0, Lr4/h41;->a:Lr4/vx1;

    check-cast p1, Lr4/og0;

    invoke-virtual {v0, p1}, Lr4/vx1;->a(Lr4/og0;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

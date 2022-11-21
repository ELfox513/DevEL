.class public final synthetic Lr4/tg2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/p03;


# instance fields
.field public final a:Lr4/ug2;


# direct methods
.method public constructor <init>(Lr4/ug2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/tg2;->a:Lr4/ug2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/tg2;->a:Lr4/ug2;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lr4/ug2;->a(Ljava/lang/Throwable;)Lr4/vg2;

    move-result-object p1

    return-object p1
.end method

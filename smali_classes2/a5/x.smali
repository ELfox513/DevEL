.class public final synthetic La5/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/m;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La5/x;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, La5/x;->a:Ljava/lang/String;

    check-cast p1, Lk4/l;

    check-cast p2, Lj5/j;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Lk4/l;->q0(Lj5/j;Ljava/lang/String;)V

    return-void
.end method

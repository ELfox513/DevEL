.class public final Lr4/wr3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;
.implements Lr4/or3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lr4/vr3;",
        "Lr4/or3;"
    }
.end annotation


# static fields
.field public static final b:Lr4/wr3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/wr3<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/wr3;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr4/wr3;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lr4/wr3;->b:Lr4/wr3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/wr3;->a:Ljava/lang/Object;

    return-void
.end method

.method public static b(Ljava/lang/Object;)Lr4/vr3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lr4/vr3<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lr4/wr3;

    const-string v1, "instance cannot be null"

    invoke-static {p0, v1}, Lr4/ds3;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {v0, p0}, Lr4/wr3;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static c(Ljava/lang/Object;)Lr4/vr3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lr4/vr3<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Lr4/wr3;->b:Lr4/wr3;

    goto :goto_0

    :cond_0
    new-instance v0, Lr4/wr3;

    invoke-direct {v0, p0}, Lr4/wr3;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lr4/wr3;->a:Ljava/lang/Object;

    return-object v0
.end method

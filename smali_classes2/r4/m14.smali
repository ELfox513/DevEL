.class public final synthetic Lr4/m14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/oz3;


# instance fields
.field public final a:Lr4/n04;


# direct methods
.method public constructor <init>(Lr4/n04;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/m14;->a:Lr4/n04;

    return-void
.end method

.method public static a(Lr4/n04;)Lr4/oz3;
    .locals 1

    new-instance v0, Lr4/m14;

    invoke-direct {v0, p0}, Lr4/m14;-><init>(Lr4/n04;)V

    return-object v0
.end method


# virtual methods
.method public final V(J)J
    .locals 1

    iget-object v0, p0, Lr4/m14;->a:Lr4/n04;

    invoke-virtual {v0, p1, p2}, Lr4/n04;->b(J)J

    move-result-wide p1

    return-wide p1
.end method

.class public final Lr4/pq3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/tm3;


# static fields
.field public static final a:Lr4/tm3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/pq3;

    invoke-direct {v0}, Lr4/pq3;-><init>()V

    sput-object v0, Lr4/pq3;->a:Lr4/tm3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final h(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

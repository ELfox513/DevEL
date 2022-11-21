.class public Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/ResearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StartResearchingException"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/ResearchManager;

.field public final reasons:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/managers/ResearchManager$StartResearchFailReason;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/ResearchManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;->a:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    new-instance p1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchingException;->reasons:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

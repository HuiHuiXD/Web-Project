package actions;

import bean.Game;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import dao.impl.GameDaoImp;

public class GameAction extends ActionSupport implements ModelDriven<Game> {
    Game game = new Game();

    @Override
    public Game getModel() {
        return this.game;
    }


    public String saveGame() {
        GameDaoImp dao=new GameDaoImp();
        dao.save(getModel());
        ActionContext.getContext().put("trip", "添加成功 *\\^_^/*");
        return SUCCESS;
    }
}

package chap19.rentCar.window;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import chap19.member.controller.MemberController;
import chap19.rentCar.controller.RentCarController;
import chap19.rentCar.controller.RentCarcontrollerImpl;
import chap19.rentCar.vo.RentCarVO;

public class ModifyRenDialog extends JDialog {
	JPanel panelSearch, panelBtn;
	JLabel lRenName;
	JTextField tf;
	
	// 특정 아이디에 해당되는 회원 정보 UI객체
	JPanel panelRentCar;
	JLabel lNumber, lColor, lDispla, lMaker;
	JTextField tfNumber, tfColor, tfDispla, tfMaker;
	
	JButton btnSearch;
	JButton btnSave;
	JButton btnCancel;
	
	RentCarController rentcarController;
	
	public ModifyRenDialog(RentCarController rentcarController, String title ) {
		this.rentcarController = rentcarController;
		
		setTitle(title);
		init();
		
	}
	
	public void init() {
		panelSearch = new JPanel();
		panelBtn = new JPanel();
		
		lRenName = new JLabel("차랑명");
		tf = new JTextField(15);
		btnSearch = new JButton("조회하기");
		
		// 검색에 관련 UI Panel
		panelSearch.add(lRenName);
		panelSearch.add(tf);
		panelSearch.add(btnSearch);
		
		btnSave 	= new JButton("저장");
		btnCancel 	= new JButton("취소");
		
		// 버튼에 관련 UI Panel
		panelBtn.add(btnSave);
		panelBtn.add(btnCancel);
		
		lNumber = new JLabel("차량넘버");
		lColor = new JLabel("컬러");
		lDispla = new JLabel("배기량");
		lMaker = new JLabel("제조사");

		
		tfNumber = new JTextField(20);
		tfColor = new JTextField(20);
		tfDispla = new JTextField(20);
		tfMaker = new JTextField(20);
		
		panelRentCar = new JPanel(new GridLayout(0, 2));
		
		panelRentCar.add(lNumber);
		panelRentCar.add(tfNumber);
		
		panelRentCar.add(lColor);
		panelRentCar.add(tfColor);
		
		panelRentCar.add(lDispla);
		panelRentCar.add(tfDispla);
		
		panelRentCar.add(lMaker);
		panelRentCar.add(tfMaker);
		
		// 이벤트 리스너
		btnSearch.addActionListener(new CarBtnHandler());
		btnSave.addActionListener(new CarBtnHandler());
		btnCancel.addActionListener(new CarBtnHandler());
		
		// 각 panel을 대화창(JDialog)에 배치
		add(panelSearch, BorderLayout.NORTH);
		add(panelRentCar, BorderLayout.CENTER);
		add(panelBtn, BorderLayout.SOUTH);
		
		setLocation(300,100);	// 다이얼로그 출력 위치
		setSize(600,300); 		// 창의 크기
		setModal(true); 		// 항상 부모창 위에 표시
		setVisible(true);		// 대화창을 화면에 표시
		
		
	}
	
	class CarBtnHandler implements ActionListener {

		@Override
		public void actionPerformed(ActionEvent e) {
			
			if (e.getSource()==btnSearch) {
				System.out.println("조회버튼");
				
				String number = tf.getText().trim();
				RentCarVO vo = RentCarVO.builder().renNumber(number).build();
				
				RentCarVO renVO = rentcarController.checkNumber(number)(vo.getRenNumber());
			
				if (renVO.getRenNumber() != null) {
					
					tfNumber.setText(renVO.getRenNumber());
					tfColor.setText(renVO.getRenColor());
					tfDispla.setText(renVO.getRenDispla());
					tfMaker.setText(renVO.getRenMaker());
					
				} else if (renVO.getRenNumber() == null) {
					message("등록되지 않은 차량 입니다.");
				}
				
			} else if (e.getSource()==btnSave) {
				
				String number = tfNumber.getText().trim();
				String color = tfColor.getText().trim();
				String displa = tfDispla.getText().trim();
				String maker = tfMaker.getText().trim();
				
				
				rentcarController.modRentCar(vo);
				
			
			}
			
		}
		
	}
		
}
